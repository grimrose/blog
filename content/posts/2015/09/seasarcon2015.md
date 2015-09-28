+++
categories = ["Blog",  "Seasar", "Java"]
date = "2015-09-29T01:25:47+09:00"
description = "Seasar Conference 2015"
draft = false
slug = "seasarcon2015"
title = "Seasar Conference 2015 Not 同窓会 に参加してきました #seasarcon"

+++

https://event.seasarfoundation.org/sc2015/

http://seasar.connpass.com/event/19317/

Seasar2はプロダクトでも使ったことがあるし、Seasar Conferenceがあったおかげで今の自分があると思っているので、参加してきました。

## セッション

* [Seasar ユーザだったプログラマが目指す OSS の世界展開](https://event.seasarfoundation.org/sc2015/2015/09/17/seratch/)

  * 瀬良さんのセッションは、大学の教室ということもあり本当に歴史の授業っぽい雰囲気でした。
  * Skinny Frameworkは、今のプロジェクトで使っていて大変お世話になっています。
  * 特にSkinny-ORM, ScalikeJDBCはSQLをゴリゴリ書くようなプロダクトに向いていると思います。
  * GitHubがデファクトとなっている現状では、日本語より英語のドキュメントを充実するほうがより使ってもらえる可能性が高いのは確かだと思います。

* [Play Framework + Scala は Next Seasar なのか](https://event.seasarfoundation.org/sc2015/2015/09/08/tsuyoshizawa/)

  * Next Seasarについては、既存のSeasar2を利用したプロダクトを別のフレームワークに置き換えてもそれなりに利益を生むようなものでない限り時代に取り残されて行く運命なのかも知れないと感じました。
  * 挙げられそうなNext Seasarとしては、Spring bootやJavaのMicroframeworkやJava EE等があります。
  * ですが、メンテナンスする人達がJavaの進化に置いて行かれるような場合、選択すら出来ずどうすることも出来ない状態に陥るのではないかと思います。

* [「Single Command Deployのためのgradle-aws-plugin講座」〜自動ビルド厨はここまで大きくなりました〜](https://event.seasarfoundation.org/sc2015/2015/09/07/daisuke_m/)

  * Gradleの話を聞いてみたかったのと、AWSへのデプロイツールとしてどう使うのか興味がありました。
  * ドキュメントに残さなければいけない箇所を出来る限り少なくして、自動化するというのはとても参考になりました。

* [Spring Boot for the Seasar Developers – みんなが欲しかったアレもソレもここにある](https://event.seasarfoundation.org/sc2015/2015/09/25/cero/)

  * ライブコーディングでサクサクとSpring bootを使ったWebアプリを作っていくのは、楽しそうに見えました。
  * Spring bootのremote-shellは、[CRaSH](http://www.crashub.org/)がベースなので、単体でも使うことが出来ます。
  * IntelliJ IDEAであれば、[Using Language Injections](https://www.jetbrains.com/idea/help/using-language-injections.html#d1003694e290)を使うことで、StringのSQLに対してシンタックスハイライトを付けることが出来るようになります。

* [SIは本当に終わったのか?](https://event.seasarfoundation.org/sc2015/2015/09/25/si/)

  * 受託やSIの世界から遠ざかってしまったので、第三者的な視点で見てました。
  * 元請けの視点がメインだったので、下請けからの視点が無かったのはちょっと残念だと思いました。
  * 実際に利用するユーザのフィードバックと取り込めるような距離感が無いと、今後も厳しそうだと感じました。

## おわりに

Seasar2から卒業ということで、自分が変わるキッカケになったSeasar Conferenceに久しぶりに参加できてよかったと思います。

一つの区切りが出来たことで、これまでSeasar2から何を得たのか振り返る事が出来ました。

特に、DIとAOPの基本、O/R Mapperの構成を学ぶ事が出来たのが大きいと感じました。

個人的に来年もし開催されるのであれば、卒業式というのが良いのではないと思っています。

  <blockquote class="twitter-tweet" lang="ja"><p lang="ja" dir="ltr">来年、卒業式やるのが良いのでは <a href="https://twitter.com/hashtag/seasarcon?src=hash">#seasarcon</a></p>&mdash; とーます (@grimrose) <a href="https://twitter.com/grimrose/status/647726679025037312">2015, 9月 26</a></blockquote>
  <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

主催の皆様、Speakerの皆様、参加者の皆様、ありがとうございました。
