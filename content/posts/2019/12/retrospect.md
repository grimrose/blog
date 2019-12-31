+++
title = "2019年の振り返り"
date = 2019-12-31T00:00:00Z
draft = false
description = "retrospect"
categories = ["Blog"]
slug = "retrospect"
+++

今年も大晦日になったので、振り返ってみたいと思います。

2018年の振り返りは、[こちら](../../../2018/12/retrospect/)でした。

## やってみたかったことの振り返り

2019にやってみたかったことは、以下のとおりでした。

> * Golangを使ったアプリケーションを作る
> * AWS Lambdaを使ったプロダクトを作る
> * ScalaのライブラリにContributeする

Golangを使ったアプリケーションについては、一時期Cloud Functionsで利用しようかと考えていましたが、作りたいものと自分のスキルを鑑みて見合わせました。
まずは、チュートリアル的な内容である、slackへの通知からやっていこうかと思います。

AWS Lambdaを使ったプロダクトを作る機会がなくなってしまったのと、Cloud Functionsの事を調べていたので、触る機会がなくなってしまいました。

ScalaのライブラリへのContributeは、Cloud FunctionsでScala.jsを使ってみようとした過程で知った[pepegar/hammock](http://pepegar.com/hammock/)にPRを出すことが出来ました。

やってみたかったことは、概ね出来たのでは無いかと思います。

## やってきたことの振り返り

今年は、去年から継続していたOpenCensusに関する登壇をすることが出来ました。

- [OpenCensus meetup vol.1 に参加してきました #opencensusjp](../../04/opencensus-meetup/)
- [JJUG CCC 2019 Springに参加してきました #jjug_ccc](../../05/jjug-ccc-2019/)

OpenCensusは、[OpenTelemetry](https://opentelemetry.io/)へ移行中なので、引き続き注目していこうかと思います。

また、上記にも出てきましたが、自分で作ってみたいものをFirebaseの上で作ってみようかと思い立ったので、自分が今一番使える言語であるScalaとFirebaseで何が出来るかを調べていた過程で、Cloud FunctionsでScala.jsを使ってやれないか試していたのをまとめて、[Scala関西Summit 2019](https://2019.scala-kansai.org/)で登壇しました。

- [Scala.jsでGoogle Cloud Functionsを利用する前に知りたかったこと](https://2019.scala-kansai.org/sessions.html#%E3%82%88%E3%81%97%E3%81%A0)

blogを書いていなかったので、後で書きます。

今年の一番大きな出来事は、やはり[転職](http://localhost:1313/blog/2019/05/career-change/)でした。

12月で転職して半年が経って改めて思うのは、評価される環境で自分の能力を発揮できて、それを評価してもらえるのが、一番良かったと思えました。

> <blockquote class="twitter-tweet"><p lang="ja" dir="ltr">「いい転職ってなんですか？」と聞かれるけど、僕は「自分が入社後に活躍できる転職」がいい転職だと思う。自分の価値を発揮して信頼を獲得できる環境にいることが「いい転職が出来た」と思える要素になる。転職に正解はないけど、自分にとって正解にするためにも「評価される環境」に行くのが大切よ。</p>&mdash; motoさん (@moto_recruit) <a href="https://twitter.com/moto_recruit/status/1206685782506790912?ref_src=twsrc%5Etfw">December 16, 2019</a></blockquote> 

少なくとも前職で私のエンジニアとしてのスキルを評価できる人が上には存在しなかったのは事実です。
もちろん、評価基準がそもそも違うので、単純に比較出来るものではありませんし、評価そのものが環境に依存しているものだと思うので、あくまでも現時点の評価は満足できるものではありました。

## 今年買ってよかったもの

今年は、挙げたらキリが無いのですが、ガジェットはこの2つが一番良かったと思います。

### [Satechi 75W デュアル Type-C PD トラベルチャージャー 2](https://satechi.net/collections/usb-type-c/products/75w-dual-type-c-pd-travel-charger)

MBP 13inchのを充電出来てかつ、もう一つのUSB Type-CでZenfone 5も充電出来るのでとてもありがたいです。

ただ、[HyperJuice: World's First & Smallest 100W GaN USB-C Charger](https://igg.me/at/gan100w/x/12133992#/) も気になっています。

### [Nature スマートリモコン Nature Remo Remo-1W2（2nd Generation）](https://nature.global/jp/nature-remo)

Nature Remoは、自宅の室温と湿度が外部から見えるようになっただけでも、画期的だったので選びました。
APIも用意されているっぽいので、stackdriverと連携させて見たいと考えています。

ガジェット以外だと、枕とマットレスが一番だったのですが、それはまた別の日のblogとして書く予定です。

## 2020年にやってみたいこと

今年になって、[typelevel](https://typelevel.org/)のプロダクトを触る機会が増えてきたので、何かしらまとめて発表出来る機会が出来ればいいなと思っています。

また、Cloud Runを使ってみたいとも思っているので、GraalVMでnativeに出来るScalaのフレームワークを試していければと思っています。

## おわりに

今年も相変わらずblogを書いていなかったので、サッと書いてリリース出来るようにしたいところです。

2020年もよろしくお願いいたします。

---

<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
