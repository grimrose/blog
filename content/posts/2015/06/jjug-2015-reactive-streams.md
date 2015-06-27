+++
categories = ["Blog", "java", "JJUG"]
date = "2015-06-27T18:19:34+09:00"
description = "Reactive Streams JJUG 2015 06"
draft = false
slug = "jjug-2015-reactive-streams"
title = "【東京】JJUG ナイトセミナー 「Reactive Streams特集」 に参加してきました。 #jjug"

+++

## はじめに

https://jjug.doorkeeper.jp/events/26547

[@making](https://twitter.com/making)さんから、[@okapies]さんと一緒に「Reactive Streams」について話してくれと頼まれましたので、参加してきました。

元々は、[@cero_t](https://twitter.com/cero_t)さんが発端らしいです。

<blockquote class="twitter-tweet" lang="ja"><p lang="ja" dir="ltr">ちなみに今日のReactive Streams勉強会の発端は、ゴールデンウィーク明けに <a href="https://twitter.com/cero_t">@cero_t</a> さんがReactiveについてほげほげ言ってたことで、ナイトセミナーやろうぜって感じだったんだけど、当の本人は来ていないっていう</p>&mdash; Toshiaki Maki (@making) <a href="https://twitter.com/making/status/613702257939353600">2015, 6月 24</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

初めは、マイナーなネタならそんなに人集まらないだろうと思ってたのですが、キャンセル待ちが100人超えするくらいまで期待されてて正直びっくりしました。

当日のアンケートシステム、とても良かったので次回以降改善されるのを期待してます。


## 資料

[@okapies]さんの資料は、こちらです。

<script async class="speakerdeck-embed" data-id="df469560cc64424c98330aad22b19cda" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

私の資料は、こちらです。

http://grimrose.github.io/jjug-2015-reactive-streams/

利用したサンプルコードは、こちらです。

https://github.com/grimrose/jjug-2015-reactive-streams

元々は、[Vert.x3]でやろうと思ってましたが、[Reactor]か[RxJava]でと言われたので、使ったことがあるRxJavaを選びました。

確かに、当日のアンケートを見ると[Vert.x3]、[Ratpack]の認知度が低すぎて、RxJavaを選択しておいてよかったと思いました。

ドキュメントの多さは、やはりRxJavaに分があるのですが、Reactorもかなり充実しています。

個人的には、[MongoDB Reactive Streams Java Driver]がチュートリアルとして、充実してると感じました。

初めてJavaでAkkaを使ってみたのですが、いろいろツライ印象しか受けませんでした。

あれなら、素直にScalaで使ったほうが分かりやすいと思います。


## おわりに

Reactive Streamsについては、それぞれのRuntimeの世界を繋ぐ為の仕様という認識が一番分かりやすいと思います。

実際の泥臭い部分は、Runtimeが頑張ってくれますが、何をやっているのか、どうやって実現しているのかを知っておくのは大切です。

どのRuntimeもReactive Streams向けに変換するライブラリがありますので、そのソースコードを読むのも勉強になると思います。

JDK9にどこまで採用されるか分かりませんが、データフロー制御についての共通インターフェースが採用されると、java.util.concurrentと併せて、非同期処理をもっと使いやすくなると思います。

JVMでデータフロー制御でお困りの方は、使ってみてはいかがでしょうか。

[@okapies]: https://twitter.com/okapies
[Vert.x3]: http://vertx.io
[Reactor]: http://projectreactor.io
[RxJava]: http://reactivex.io
[Ratpack]: http://ratpack.io
[MongoDB Reactive Streams Java Driver]: http://mongodb.github.io/mongo-java-driver-reactivestreams/
