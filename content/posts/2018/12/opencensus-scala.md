+++
title = "Japan Container Days v18.12に参加してきました #containerdaysjp"
date = 2018-12-09T00:00:00Z
draft = false
description = "Japan Container Days v18.12"
categories = ["Blog", "OpenCensus", "Scala"]
slug = "opencensus-scala"
+++

## はじめに

この記事は、[Scala Advent Calendar 2018](https://qiita.com/advent-calendar/2018/scala) の9日目のエントリーです。

8日目は、[@yoshiyoshifujii](https://qiita.com/yoshiyoshifujii)さんの[Akka gRPCを試してみた](https://qiita.com/yoshiyoshifujii/items/04944ade01af4fe06bca)でした。

10日目は、[@j5ik2o](https://qiita.com/j5ik2o)さんです。

準備の期間を含めて約4ヶ月位 [census-ecosystem/opencensus-scala](https://github.com/census-ecosystem/opencensus-scala) に触れていたので振り返りつつ、
Japan Container Daysの参加した感想を書こうかと思います。

## Japan Container Days v18.12

https://containerdays.jp/

> <blockquote class="twitter-tweet" data-cards="hidden" data-lang="ja"><p lang="ja" dir="ltr">.<a href="https://twitter.com/grimrose?ref_src=twsrc%5Etfw">@grimrose</a> による「OpenCensusとJaegerで分散トレーシングを見てみよう」を受け付けました。このプロポーザルを聞いてみたい人はいいねやリツイートでぜひ応援してください！ <a href="https://twitter.com/hashtag/containerdaysjp?src=hash&amp;ref_src=twsrc%5Etfw">#containerdaysjp</a> の公募セッション一覧はこちら  <a href="https://t.co/EEbrgf1bBv">https://t.co/EEbrgf1bBv</a></p>&mdash; JapanContainerDays (@containerdaysjp) <a href="https://twitter.com/containerdaysjp/status/1037344706890358785?ref_src=twsrc%5Etfw">2018年9月5日</a></blockquote>

### OpenCensusとJaegerで分散トレーシングを見てみよう

スライドは、こちらで公開してあります。

> <blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">OpenCensusとJaegerで分散トレーシングを見てみよう のスライドを公開しました。<a href="https://twitter.com/hashtag/containerdaysjp?src=hash&amp;ref_src=twsrc%5Etfw">#containerdaysjp</a> <a href="https://twitter.com/hashtag/TerraceRoom?src=hash&amp;ref_src=twsrc%5Etfw">#TerraceRoom</a><a href="https://t.co/Y9oTfsZ7Yg">https://t.co/Y9oTfsZ7Yg</a></p>&mdash; とーます@悪いオタクらしい (@grimrose) <a href="https://twitter.com/grimrose/status/1070462256377344000?ref_src=twsrc%5Etfw">2018年12月5日</a></blockquote>

内容としては、[Scala関西 Summit 2018へ参加してきました #scala_ks](../../11/scala-kansai-summit) で話した内容からScalaの要素を削って、OpenCensusの内容を増やしました。

段取りを間違えてしまって、デモの時間を減らしてしまうという痛恨のミスを犯してしまったのが心残りです。

> <blockquote class="twitter-tweet" data-conversation="none" data-lang="ja"><p lang="ja" dir="ltr">心残りがあるとすれば、elasticsearchをバックエンドにした理由であるkibanaでfluentdで送ったログとjaegerのtracingが一緒に見られるところまでデモをしたかった…</p>&mdash; とーます@悪いオタクらしい (@grimrose) <a href="https://twitter.com/grimrose/status/1070311091811405824?ref_src=twsrc%5Etfw">2018年12月5日</a></blockquote>

## OpenCensus Scalaについて

[census-ecosystem/opencensus-scala](https://github.com/census-ecosystem/opencensus-scala) 

Akka-HTTPで使う前に[README.md](https://github.com/census-ecosystem/opencensus-scala/blob/master/akka-http/README.md)を見てもらうと、
どうやってRouterから`Span`を受け取って、Tracingを組み立てて行くことが出来るかが分かります。

あとは、自分が使いたいExporterの設定を`application.conf`で有効にすることで、転送されるようになります。

`0.6.1`で利用できるExporterは以下のとおりです。

* Stackdriver
* Logging
* Zipkin
* Instana

今回紹介したJaegerはZipkinと互換性があるので、転送先をJaegerのCollectorにすることで利用可能になります。

あくまでwrapperなので、[census-instrumentation/opencensus-java](https://github.com/census-instrumentation/opencensus-java)が対応していないExporterは、自分でCustom Exporterを作る必要があります。

その際は、[Trace exporter](https://opencensus.io/exporters/custom-exporter/java/trace/)を参考にしつつ、
[census-instrumentation/opencensus-specs](https://github.com/census-instrumentation/opencensus-specs)でSpanの中身をみつつ、
利用したいTracingのプロダクトのフォーマットにしていく必要があります。

また、`Span`は伝播させる必要があるので、`ReaderT`のような合成しやすい型と組み合わせて対応するといいと思われます。

```scala
import cats.data.ReaderT
// or
import scalaz.ReaderT

type ReaderSpanT[F[_], A] = ReaderT[F, Span[F], A]
```

[Module for tagless-final & cats-effect](https://github.com/census-ecosystem/opencensus-scala/issues/31)のように、そもそも組み込んでしまうissueも上がっています。

Scalaの言語のチカラを活かして使いやすくすることが出来るので、今後も期待出来ると思われます。

## おわりに

> <blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">アプリ、ミドル、インフラやる人のボーダーが曖昧になっていった世界はとてもexcitingだと思うので、いろんなことに貪欲に取り組んで行こうと改めて思いました <a href="https://twitter.com/hashtag/containerdaysjp?src=hash&amp;ref_src=twsrc%5Etfw">#containerdaysjp</a></p>&mdash; とーます@悪いオタクらしい (@grimrose) <a href="https://twitter.com/grimrose/status/1070290549112852480?ref_src=twsrc%5Etfw">2018年12月5日</a></blockquote>

Playを含めて、フレームワーク側でOpenCensusを組み込むようになってくれるといいのですが、デファクトスタンダードがどうなっていくのかが不透明な現状では、
自分たちでフレームワークとアプリケーションを繋ぐアダプターを書くしか無いのが、導入の障壁になってしまっているように思われます。

運用も見据えて基盤となるレイヤーのことも考えつつコードを書く必要が出てきたり、
アプリケーションそのものが小さく素早くリリースできるようになったりと、
単にアプリケーションを書くだけでなく、いろいろなレイヤーの知識やこれまでの経験を改めて見直すが出来ました。

Japan Container Daysは、**Cloud Native Days Tokyo** に変わるそうです。

来年に開催される頃には、取り巻く環境がいろいろ変化していると思うので、また参加してみたいと思います。

スタッフ、スポンサーの皆様、ありがとうございました。

---
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
