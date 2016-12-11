+++
categories = ["Blog", "Scala"]
date = "2016-12-11T00:00:00Z"
description = "ScalikeJDBC and Amazon Athena"
draft = false
slug = "scala-advent-calendar-2016"
title = "ScalikeJDBCを使ってAmazon Athenaへアクセスしてみた"

+++

## はじめに

この記事は、[Scala Advent Calendar 2016](http://qiita.com/advent-calendar/2016/scala)の11日目のエントリです。

9日目 > [ponkotuy](http://qiita.com/ponkotuy)さんの[SkinnyORMのjoin定義について](http://qiita.com/ponkotuy/items/7a293436c68ebfca0472)です。

11日目 > [aoiroaoino](http://qiita.com/aoiroaoino)さんです。

## ScalikeJDBCについて

[ScalikeJDBC](http://scalikejdbc.org/)は、SQLを使ってDBにアクセスしたい場合にとても使いやすいライブラリです。

## Amazon Athenaについて

AWS re:Invent 2016で発表された新しいサービスです。

詳細については、
[Amazon Athena – Amazon S3上のデータに対話的にSQLクエリを](https://aws.amazon.com/jp/blogs/news/amazon-athena-interactive-sql-queries-for-data-in-amazon-s3/)
や、[AthenaのJDBCドライバを使ってS3のデータにSQL Workbench経由でアクセスする #reinvent #athena](http://dev.classmethod.jp/cloud/aws/amazon-athena-accessing-amazon-athena-with-jdbc/)
を見ていただければと思います。

S3に保存したデータに対してスキーマを定義してSQLでアクセスできるようになるのは、今後の自分の仕事にもつながってくるサービスでもあるので注目しています。

## アクセスしてみた

検証したサンプルコードはこちらです。

[grimrose/Scala-Advent-Calendar-2016](https://github.com/grimrose/Scala-Advent-Calendar-2016)

まずはじめに遭遇したのは、`auto commit`が常にONにするのが想定されているということでした。

遭遇した例外は、以下のような内容でした。

```
Exception encountered when invoking run on a nested suite - Failed to initialize pool: Disabling auto-commit mode not supported
com.zaxxer.hikari.pool.HikariPool$PoolInitializationException: Failed to initialize pool: Disabling auto-commit mode not supported
```

仕方ないので、以下のようにして、`auto commit`を`true`へ変えました。

```scala
val config = new HikariConfig()
config.setAutoCommit(true)
```

例えば、ScalikeJDBCでは、読み取り専用のクエリを書きたい場合は、以下のようなコードを書きます。

```scala
// サンプルのため敢えて文字列で
val from = "2014-07-05"
val to = "2014-07-05"

val results = DB readOnly { implicit session: DBSession =>
  sql"SELECT os, COUNT(*) count FROM cloudfront_logs WHERE date BETWEEN date ${from} AND date ${to} GROUP BY os"
    .map { rs => (rs.string("os"), rs.int("count")) }
    .list().apply()
}
results.foreach(println)
```

しかしながら、これを実行すると以下のような例外が発生します。

```
Method Connection.prepareStatement is not yet implemented
com.amazonaws.athena.jdbc.NotImplementedException: Method Connection.prepareStatement is not yet implemented
```

そう、`PreparedStatement`が実装されていないのです。

仕方ないので、JDBCのナマの`Statement`を生成する必要があります。

最終的に以下のようなコードにすることで、ようやく通るようになりました。

```scala
using(ConnectionPool.borrow()) { conn ⇒
  using(conn.createStatement()) { stmt ⇒
    // language=SQL
    val sql =
        """
        SELECT 
            os, 
            COUNT(*) AS count 
        FROM mydatabase.cloudfront_logs 
        WHERE date BETWEEN date '2014-07-05' AND date '2014-08-05' 
        GROUP BY os
        """.stripMargin
    // ResultSetは、Statementのclose時にcloseされる
    val rs = stmt.executeQuery(sql)

    def resultSetToSeq[A](rs: ResultSet)(fn: ResultSet ⇒ A): Seq[A] = {
      Iterator.continually(rs).takeWhile(_.next()).map(fn).toSeq
    }

    val result = resultSetToSeq(rs) { rs ⇒
      val os = rs.getString("os")
      val count = rs.getInt("count")
      (os, count)
    }
    result.foreach(println)
  }
}
```

久しぶりにナマのJDBCを触りましたが、過去の記憶を呼び覚まされて頭がウッとなりました。

あと、closeし忘れが無いか確認してましたが、`ResultSet`は`Statement`がcloseされるときにcloseされるのも、
指摘いただいて改めて認識しました。


## おわりに

JDBC Driverが提供されているとはいえ、まだいろいろ実装されていない箇所が見受けられたりなど、これからの部分が多いと思いました。

しかしながら、サービス提供開始時にここまでのものをリリースするのはさすがだと感じました。

とはいえ、Maven Centralにも無い状況では、ワークフローへ組み込むのは時期尚早だと思います。

結果はS3にcsvの形式で出力されますし、ナマとはいえJDBCを使えるので、`embulk`も使えるのではないかと思いますので、
今後も期待できるサービスになるのではないかと思います。
