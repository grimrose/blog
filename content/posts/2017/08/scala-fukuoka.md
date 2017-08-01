+++
categories = ["Blog"]
date = "2017-08-01T00:00:00Z"
description = "Scala Fukuoka 2017"
draft = false
slug = "scala-fukuoka-2017"
title = "Scala福岡2017に参加してきました #scalafukuoka"

+++

## はじめに

https://scala.connpass.com/event/57941/

[前回のScala福岡](https://scala.connpass.com/event/26674/)が楽しそうだったのと、
福岡に自分の足で行ったことがなかったので、参加してきました。


## セッション

Play2 Scalaのハンズオンは、一度もやったことがなかったので、今回はいい機会だと思いそちらを選択しました。

ハンズオンの準備が完了していなくて、IntelliJへのインポートと依存関係のダウンロードに時間が取られてしまいましたが、
最後まで進めることが出来ました。

ハンズオンの資料が最後まで進められるように出来ていて助かりました。

その後は、ずっと同じ部屋で以下のセッションを聴いてました。

* Akkaちゃんと遊ぼう！ Akka Streams で作るリアルタイムサーバ
* Backlog が一体いつから Scala を遣っていないと錯覚していた？ ~Java から Scala への移行~

Akka Streamsの話は、仕事でも使っているので身近に感じたのと、ビデオチャットが作れるのを見て、もっと勉強しなきゃと感じました。

Scalaへの移行についても、仕事でPHPからScalaへ移行している途中なので、移行戦略についてとても勉強になりました。


## LTとparadox

LTで[lightbend/paradox](https://github.com/lightbend/paradox)の導入について話してみました。

資料は、[https://grimrose.github.io/scala-fukuoka-2017](https://grimrose.github.io/scala-fukuoka-2017)です。

併せて、レポジトリは[grimrose/scala-fukuoka-2017](https://github.com/grimrose/scala-fukuoka-2017)です。

資料は、paradoxで作ってみました。

きっかけとしては、[Akkaのドキュメント](http://akka.io/docs/)を読みながら仕事をしていて、[Akka HTTP](http://doc.akka.io/docs/akka-http/current/scala/http/)のレイアウトが他のドキュメントと違っていて興味があったからです。

あとは、ドキュメントを残す際にREADMEだけではうまく説明出来なくなってきたりしたので、[Gitlab Pages](https://about.gitlab.com/features/pages/)でも使えるようなmarkdownをhtmlに出来るツールを探していました。

今回のLTに向けて検証してみて、十分使えそうだと思えたので、実際に導入してみたいと思いました。


## おわりに

懇親会では、福岡の方々や自分と同様に県外から参加された人たちとScalaの話だけでなくいろいろな話が出来て楽しかったです。

また、来年行きたいと思います。

会場を提供してくださった株式会社ヌーラボさん、スポンサーの皆様、参加者の皆様、ありがとうございました。
