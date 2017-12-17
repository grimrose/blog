+++
date = "2017-12-18T00:00:00Z"
draft = false
title = "GraphQLとScala"
description = "Sangria"
categories = ["Blog", "Scala", "GraphQL"]
slug = "graphql-with-scala"
+++

## はじめに

この記事は、[Scala Advent Calendar 2017](https://qiita.com/advent-calendar/2017/scala)の18日目の記事です。

前日は、[esplo](https://qiita.com/esplo)さんによる[slick-codegenの利用例と中身の説明](https://esplo.net/2017/12/slick-codegen/)でした。

自分たちのプロジェクトでも[GraphQL](http://graphql.org/)をCQRS(Command Query Responsibility Segregation)のQuery側として利用できないかを確認してみたかったので、
Advent Calendar駆動で調べてみました。

その中で2つ、ScalaとGraphQLに関することを知ることが出来たので紹介します。

## [Sangria]について

[GraphQL Advent Calendar 2017](https://qiita.com/advent-calendar/2017/graphql)の[Introduction to Sangria](https://grimrose.github.io/blog/2017/12/sangria-graphql/)にて紹介しています。

自分たちのプロジェクトでは[Akka HTTP]を利用しているため、そっちのエンドポイントでやっている記事を探していました。

## [Sangria]と[Akka HTTP]

[Using Akka HTTP with Sangria as GraphQL backend](https://blog.scalac.io/akka-http-and-sangria-as-graphql-backend.html)に詳細な記事がありますので、
そちらを参照してください。
ソースコードは、[marioosh/graphql-akka-http](https://github.com/marioosh/graphql-akka-http)にあります。
Sangria, Akka HTTP, Slick, H2という最小構成で出来ていますので、記事を読みながら試すことが出来ます。

もう少し、複雑なStreamベースなサンプルですと、[sangria-graphql/sangria-subscriptions-example](https://github.com/sangria-graphql/sangria-subscriptions-example)があります。
しかし、deprecatedになっている `akka.stream.actor.ActorPublisher`、`akka.stream.actor.ActorSubscriber`を使って書かれているため、
今後のActorを使わないAkka Streamsベースのパターンについては、自分たちで考える必要があります。

上記の[Akka HTTP]の考えと組み合わせることで上手く行きそうですが、検証の時間が足りませんでしたので、今後の課題として引き続きやっていければと思います。

## [Graphcool]について

[Graphcool]は、GraphQLのバックエンドを構築できるサービスです。

[Introducing the Graphcool Framework](https://blog.graph.cool/introducing-the-graphcool-framework-d9edab2a7816)の記事でもあるように、
GitHubにOSSとして公開されました。

2017年12月18日時点での最新バージョンは、`v0.10.1`です。

[Graphcool Server](https://github.com/graphcool/framework/blob/abe58f3437a6d35f7ea68a40c1d85b47ae08f43b/server/README.md)
にあるように、`docker-compose`を使ってローカルでも試せるようになっています。

[dependencies.scala](https://github.com/graphcool/framework/blob/abe58f3437a6d35f7ea68a40c1d85b47ae08f43b/server/project/dependencies.scala)を
みると、様々なミドルウェアを駆使していることが分かります。

自前でミドルウェアへのアクセスライブラリを作成していたり、ScalaでのGraphQL Clientを作成していたりと、いろいろ勉強になります。

その他のGraphQLのバックエンドのサービスというと、先日発表された[AWS AppSync](https://aws.amazon.com/jp/appsync/?nc2=h_mo)の他にも、
[Scaphold.io](https://scaphold.io/)があったりします。

バックエンドサービスが何をやっているのか知ることで、自分たちで運用するには何が必要なのか、ツラミ等を知ることが出来るので、
OSSで公開してくれた[Graphcool]には感謝しています。

## おわりに

出来れば何かしら検証したコードを踏まえつつ説明が出来れば良かったのですが、
知れば知るほど、グラフ構造を持ったオブジェクトとRDBMSの関係、NoSQLの選択、Query側のスケーリング等考えなければいけないことが増えていき、
検証が進まなくなってしまったので、参照記事の紹介ばかりになってしまいました。

割りとフロントエンドの界隈からGraphQLの話題が上がったりしますが、バックエンドからあまり上がらない理由の一つを知れたような気がします。

とは言え、ScalaとAkkaを使った実際にサービスが運用されているプロダクションのコードを見るのは、とても楽しかったです。

---

[Sangria]: http://sangria-graphql.org/
[Akka HTTP]: https://doc.akka.io/docs/akka-http/current/scala/http/index.html
[Graphcool]: https://www.graph.cool/
