+++
date = "2017-12-17T00:00:00Z"
draft = false
title = "Introduction to Sangria"
description = "Introduction to Sangria"
categories = ["Blog", "GraphQL", "Scala"]
slug = "sangria-graphql"
+++

## はじめに

この記事は、[GraphQL Advent Calendar 2017](https://qiita.com/advent-calendar/2017/graphql)の17日目の記事です。

## Sangriaとは

### 概要

[graphql.orgでも紹介されている](http://graphql.org/code/#scala)通り、GraphQLのサーバーサイド実装です。

[Sangria]は、幾つかのモジュールによって構成されていますが、おおよそ以下のような分類が可能です。

* コア
* JSONパーサー向けのライブラリ
* Relay用ライブラリ


JSONパーサーに関してなんでこんなにあるんだと他の言語の人は驚くかもしれませんが、
Scalaでは歴史的経緯により様々なJSONパーサーにまつわるライブラリが作られ、そして現在に至っています。

歴史的経緯については、[eed3si9n_ja](https://twitter.com/eed3si9n_ja/)さんのスライドを参考にしてください。

<iframe src="//www.slideshare.net/slideshow/embed_code/key/y6DT1TinQKMw4q" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/EugeneYokota/sbt-history-of-json-libraries-microservices-and-schema-evolution-tokyo-ver" title="sbt, history of JSON libraries, microservices, and schema evolution (Tokyo ver)" target="_blank">sbt, history of JSON libraries, microservices, and schema evolution (Tokyo ver)</a> </strong> from <strong><a href="https://www.slideshare.net/EugeneYokota" target="_blank">Eugene Yokota</a></strong> </div>

JSONパーサー自体もバックグラウンドで利用する関数型プログラミング向けのライブラリを選択できるようになっているため、バリエーションは様々です。
なので自分たちの好み、チーム事情に応じたライブラリを使うことが多いです。


### 初め方

2017-12-17時点でのリリースバージョンは、`v1.3.3`です。

http://sangria-graphql.org/getting-started/

[Sangria]を使ってGraphQLを実装する手順は、以下のとおりです。

* `Schema`の定義
* `Schema`のチェック
* [Akka HTTP]や[Play]を使ってGraphQLのエンドポイントを用意すること


#### [Define a GraphQL Schema](http://sangria-graphql.org/getting-started/#define-a-graphql-schema)

[Sangria]では、`Schema`の定義にmacroを用います。

とはいっても、ボイラープレートになりがちな箇所を[Sangria]がサポートするような形なので、そこまで複雑なことをやっているわけではありません。


#### [Schema Execution](http://sangria-graphql.org/getting-started/#schema-execution)

[Sangria]は、`Schema`と、エンドポイントで受け取ったGraphQLのクエリを用いて、
`Repository`(`Schema`にて取得の仕方を記載しておく)から目的に応じて[Executor](https://github.com/sangria-graphql/sangria/blob/v1.3.3/src/main/scala/sangria/execution/Executor.scala)が処理をします。
その際に、文字列からオブジェクトへ変換する`InputUnmarshaller`やオブジェクトからJSONへ変換する`ResultMarshaller`を暗黙的に渡して、
必要なオブジェクトをJSONにして返すようにしてくれます。

GraphQLの操作(`Query`, `Mutation`, `Subscription`)に応じて、予めそれぞれ`Schema`に定義しておきます。

GraphQLのクエリは、[QueryParser](https://github.com/sangria-graphql/sangria/blob/v1.3.3/src/main/scala/sangria/parser/QueryParser.scala)がASTへ変換します。
ここでは、Scalaのパーサコンビネータではなく、[parboiled](https://github.com/sirthias/parboiled)が使われています。

エンドポイントには、[Akka HTTP]と[Play]を用いる方法が紹介されています。

* [Akka-http GraphQL Endpoint](http://sangria-graphql.org/getting-started/#akka-http-graphql-endpoint)
* [Play GraphQL Endpoint](http://sangria-graphql.org/getting-started/#play-graphql-endpoint)

他のフレームワークでも、応用は出来ると思いますので、導入も簡単だと思います。


### サンプルについて

[sangria-playground](http://try.sangria-graphql.org/)、[sangria-relay-playground](http://try-relay.sangria-graphql.org/)にて公開されています。

どちらもベースとなるフレームワークは、[Play](https://www.playframework.com/)が使われています。

ソースコードは、[sangria-graphql/sangria-playground](https://github.com/sangria-graphql/sangria-playground)、
[sangria-graphql/sangria-relay-playground](https://github.com/sangria-graphql/sangria-relay-playground)で公開されているので、
サクッとローカルでも立ち上げることが可能です。

どちらも、[graphiql](https://github.com/graphql/graphiql)が導入されているので、簡単に試すことが出来ます。


### 触ってみて

サンプルに出てくる`ProductRepo`等のオブジェクトの集まりであるコンテキストをどうやって実装するか、
サーバーサイドが注力すべき場所になるように、[Sangria]がある程度お膳立てをしてくれているように感じました。

特にグラフ構造を持つようなコンテキストでは、グラフ構造が得意ではないRDBMSを操作するのは、正直厳しいように思えます。
他の言語のサーバーサイド実装の事情がよく分かっていないので、このような問題をどうやって解決しているのか気になるところではあります。

個人的には、[Infinispan](http://infinispan.org/)、[Apache Geode](http://geode.apache.org/)、[Apache Ignite](https://ignite.apache.org/)や[Hazelcast](https://hazelcast.org/)といった、
In-Memory Data Gridのようなものと組み合わせて、オブジェクトをそのままメモリで扱いながら、CQRS(Command Query Responsibility Segregation)と上手く組み合わせて行くのが現状なのではないかと考えています。

Akkaの文脈であれば、[sangria-graphql/sangria-subscriptions-example](https://github.com/sangria-graphql/sangria-subscriptions-example)のようにStreamで解決できたり、
オブジェクトの永続化も[Akka persistence](https://doc.akka.io/docs/akka/2.5.4/scala/persistence.html)等のAkkaのエコシステムに乗ることで、解決策も出てくると思います。

もっと[Sangria]について知りたい人は、[Learn](http://sangria-graphql.org/learn/)により詳細に載っていますので、ぜひ参考にしてください。

## おわりに

GraphQLのBaasである[Graphcool](https://www.graph.cool/)が実装を[graphcool/framework](https://github.com/graphcool/framework)へ公開したため、
以前は、Scalaの実装となると[Sangria]一択だったのが、graphcoolがScalaで実装されていることがわかりました。

こちらも、気になるので別の機会に触って試してみたいと思います。

---

[Sangria]: http://sangria-graphql.org/
[Akka HTTP]: https://doc.akka.io/docs/akka-http/current/scala/http/index.html
[Play]: https://www.playframework.com/
