+++
title = "2018年の振り返り"
date = 2018-12-31T00:00:00Z
draft = false
description = "retrospect"
categories = ["Blog"]
slug = "retrospect"
+++

今年も大晦日になったので、振り返ってみたいと思います。

2017年の振り返りは、[こちら](../../../2017/12/retrospect/)でした。

## やってみたかったことの振り返り

2018にやってみたかったことは、以下のとおりでした。

> * Golangを使ったクライアントの開発及び運用
> * Pythonを使ったシステムの構築及び運用(リベンジ)
> * Alexa Skill or Action on Googleを使ったサービスを作る

Golangを使ったクライアントについては、取り組むことが出来ずじまいだったので、リベンジしたいところです。

Pythonを使ったシステムの構築及び運用については、Jupyter notebookを積極的に利用することでPythonのエコシステムに慣れ、
Pipenvを利用した環境構築からDockerでの運用まで出来るようになりました。
とはいえ、Dockerを利用した継続的なテスト運用まで手を付けることが出来なかったのが、心残りです。

最後のスマートスピーカー周りは、本体だけ買って時刻の確認やポッドキャストのスピーカーとしてしか利用していない状況なので、
もう少し自分の役に立つスキルとか作ってみたかったのですが、手を付けることが出来ませんでした。

やってみたかったことがなかなか出来ない1年だったように見えますが、会社のプロジェクトの方が充実していたので、
そこまでネガティブな印象はありませんでした。

## やってきたことの振り返り

今年は、会社の組織が変化していったので、それに伴いプロジェクトの方針やプロダクトそのものが変わっていったのが印象的でした。

その一環で、今までPHPで運用していた可視化のプロダクトが別のシステムに置き換わることが決まって、
新しいシステムへ移行するためにいろいろと整備をしたり、AWSについていろいろと検証していたりしていました。

また、自分たちで開発していたScalaのシステムを新しいシステムでも使えるようにモジュール分割をしつつ、
Clean Architectureに寄せていくメンテナンスをしていました。
その過程で、[Airframe](https://wvlet.org/airframe/)に触れたり、[OpenCensus](https://opencensus.io/)に触れたことで、
登壇する機会に恵まれたり、勉強会で様々な人と話せる機会を持つことが出来ました。

今年は、以下の内容で発表してきました。

* Japan Container Days v18.12
    * OpenCensusとJaegerで分散トレーシングを見てみよう
* Scala関西 Summit 2018
    * Akkaを分散トレーシングで見てみよう

同じネタを別のコミュニティでやるというのはなかなか無いと思ったのでやってみましたが、
それぞれバックグラウンドが違う人にどのようにしたら伝わるのか考えることが出来て、とても勉強になりました。

また、会社からの依頼で登壇したり、社内の勉強会でLTしたりと、会社でも話す機会が増えて、前に立って話すことに慣れてきたのかなと思います。

今後はアウトプットの**質**にもこだわってやっていけるように、いろいろと試行錯誤してみたいと思います。

## 今年買ってよかったもの

[Logicool ロジクール R1000SL](https://www.logicool.co.jp/ja-jp/product/spotlight-presentation-remote)

登壇する機会が増えたので購入しましたが、USB type Cで充電出来るのと、PDF, Web, Keynote, Powerpointに対応しているのがとてもありがたかったです。
特に、Jupyter notebookをプレゼン資料として使うようにしているので、これだけでも買ってよかったと思いました。

[麻辣ペッパー](https://kaldi-online.com/item/4560148209711.html)

Twitterのタイムラインで流れてきて、帰宅途中で購入しました。
中身は「唐辛子、唐山椒、食塩、生姜」と何の変哲もないスパイスですが、教えてもらったとおりに麺類に書けてみたらやみつきになってしまいました。
山椒が好きな自分にはとても相性のいいスパイスでした。

## 2019年にやってみたいこと

今の会社に転職してかれこれ4年在籍して5年目になります。
所属している部署でも古株の方になってしまって、大企業でも組織がここまで変われるのかというのを実感しています。

今年の後半に取り組んでいた開発環境などの足回りを整えたりする仕事は、自分自身好きな分野なのですが、
そればっかりやっている訳にもいかないのと、プロジェクトを前に進めるには、やはり議論してコードに落として動かしていく方が重要だと思っています。

そこで、2020年まで残り1年となる年にやり残したことは無いかと考えてみたところ、以下のことをやってみたいなと思っています。

* Golangを使ったアプリケーションを作る
* AWS Lambdaを使ったプロダクトを作る
* ScalaのライブラリにContributeする

WebアプリケーションとバッチアプリケーションをAkka Streamsで組み始めると、それぞれの境界線がだんだん無くなっていっていると感じています。
Akka以外でも、組み込める、組み合わせられるようなアーキテクチャをもっと突き詰めてみたいので、もう少し幅広く経験を積んでみたいと考えています。

もっとScalaのコードを書きたいとも思っているので、使っているライブラリ等にもっとContributeしていきたいなと思っています。

## おわりに

今年は、blogに書く機会がかなり減っていたので、もう少しそちらの方のアウトプットを増やしていければと思います。
また、よりよいアウトプットをするためにもインプットとなる行動は継続的に続けていきます。

2019年もよろしくお願いいたします。
