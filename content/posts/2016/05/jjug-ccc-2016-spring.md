+++
categories = ["Blog", "Java", "Groovy", "Gradle"]
date = "2016-05-26T00:00:00+09:00"
description = "JJUG CCC 2016 Spring"
draft = false
slug = "jjug-ccc-2016"
title = "JJUG CCC 2016 Springに参加してきました #jjug_ccc #ccc_m61"

+++

## 発表のキッカケ

ちょうど日々の業務でGradleのタスク機能を利用して、共有ディレクトリにあるExcelのデータとDBの値とチェックしたり、
前回の作業との差分を抽出して入力ミスがないかチェックしたり、といった小さい業務タスクを自動化していたので、
50分は無理でも新しく出来た20分枠ならイケるんではないかと思い、
Groovy枠として選ばれたら本気でやるかといった感じで応募しました。

なので、[十徳ナイフとしてのGradle / @grimrose #35](https://github.com/jjug-ccc/call-for-paper-2016spring/issues/35)に投票して頂いた皆様には、大変感謝しております。

## jupyter使ってる理由

ここ最近、発表資料には[jupyter](http://jupyter.org/)を活用しています。理由としては以下のとおりです。

* 日常的に使っている。
* Markdownで書ける。
    * スライドの確認がし易い。
    * リンクや画像を埋めるのが楽。
    * コードのシンタックスハイライトもされる。
* Docker imageにしてしまえば、`docker run`か`docker-compose up`ですぐに使える。
* [takluyver/bash_kernel](https://github.com/takluyver/bash_kernel)を入れれば、jupyer-notebookからbashが使える。
* GitHubへpublishすれば、[nbviewer](https://nbviewer.jupyter.org/)で閲覧できる。

標準のPythonや[Spark](https://github.com/jupyter/docker-stacks)向けのイメージを使えば、REPL代わりに使えるし、実行結果も保存出来たり等重宝してます。

## 発表の主旨

今回の発表で一番伝えたかったのは、「ツールは達成したい目的によって変えましょう」ということです。
「日常業務を楽にしたい。」であれば、自分の本来やらなければならないメインの仕事に割り当てる時間を増やすというのが目的なので、
今回は自分が使えて、すぐに解決出来る「Gradle」を採用したまでです。

もちろん、Excelを使うヒトとの協調が必要であれば、Excel VBAも利用します。

Gradleで解決したタスクもゆくゆくはシステム化を目指すのであれば、それに依存するのではなく捨てられるようにしておくのが望ましいと思います。

そのままシステム化しようとすると、手段が目的となってしまい、本来解決しなければならなかった課題にたどり着くことが出来ず、
自分だけしかメンテナンス出来ない負債が残るだけです。


## サンプルの解説

Gradleのタスク機能を使ったサンプルプロジェクトは、こちらです。

[grimrose/JJUG-CCC-2016-Spring](https://github.com/grimrose/JJUG-CCC-2016-Spring)

あるプロジェクトを一つのworkspace配下において行くような場合を想定してます。
 
そのプロジェクトを構成しているそれぞれの個別プロジェクトを、Gradleのマルチプロジェクト機能を利用して、Gradleの依存を含めること無く操作できるようにするのが目的です。

特にフロントエンドは、完全に趣味とトライアルに走ってみました。
個人的に気になっている[Mithril](http://mithril.js.org/)と[Typescript](https://www.typescriptlang.org/), 
[power-assert-js](https://github.com/power-assert-js/power-assert), [webpack](https://webpack.github.io/)の組み合わせに挑戦してみました。

その他のプロジェクトも、jarを動かしたり、JRubyを使ってRubyのプロダクトを動かしたり等、Gradle WrapperとJDKが入っているだけのマシンでここまでやれたり、
プロダクトを統括するタスクランナーとしてのGradleというのを示すことが出来たのではないかと思います。

## 参加したセッション

今回参加したセッションは、以下のとおりです。

* [E-2 ブラウザテストをサクサク進めるためのGeb実践入門](http://www.java-users.jp/?page_id=2396#E-2)
* [GH-3 Jenkins2.0](http://www.java-users.jp/?page_id=2396#GH-3)
* [AB-4 Introduction to JShell: The Java REPL Tool](http://www.java-users.jp/?page_id=2396#AB-4)
* [AB-5 Apache Apexとインメモリー最適化による超高速処理の世界](http://www.java-users.jp/?page_id=2396#AB-5)
* [AB-6 ビッグデータじゃなくても使えるSpark☆Streaming](http://www.java-users.jp/?page_id=2396#AB-6)
* [GH-7 Java Pazzler](http://www.java-users.jp/?page_id=2396#GH-7)
* [M-7_2 JVM上でのストリーム処理エンジンの変遷](http://www.java-users.jp/?page_id=2396#M-7_2)

セッション数が増えたのと20分枠のおかげで、体がいくつあっても足りないという感じでしたが、
休憩のタイミングと間隔にゆとりがあったおかげでそこまで大変では無かったと思いました。

## 反省点

今回、自分が予想していたよりも多くの人に来ていただいた為、終盤の立ち見で体調が優れなかったり、部屋に入れなかった方がいたのは申し訳なかったと思ってます。
出来る限り、サンプルプロジェクトやtwitter等でサポート出来ればと思っています。

また、始まる前にセッションの軽い説明などをする際に他のセッションに誘導したりして、
自分の後のセッションを担当されていた[松村翔子 / しょこ](http://www.java-users.jp/?page_id=2396#M-6_2)の事を考えていなかったのは、誠に申し訳ありませんでした。

さらに、時間配分を間違えて発表の後半も駆け足になってしまった上にオーバーしてしまって、スタッフの人にもご迷惑をお掛けしてしまいました。

> <blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">grimroseさん、これ絶対、50分でやるやつやったｗｗ <a href="https://twitter.com/hashtag/ccc_m61?src=hash">#ccc_m61</a></p>&mdash; CERO-METAL (@cero_t) <a href="https://twitter.com/cero_t/status/733934673789739008">2016年5月21日</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

上記のような反省が残るJJUG CCCでした。

## おわりに

ライブレポートで有名ななかやまさんが来ていただいたみたいで、twitterにレポートを上げてくださいました。ありがとうございました。
次回お会いする機会が有ったら直接お礼をお伝え出来ればと思っています。

> <blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">十徳ナイフとしてのGradleを聞いたメモ。<a href="https://twitter.com/hashtag/ccc_m61?src=hash">#ccc_m61</a> <a href="https://twitter.com/hashtag/jjug_ccc?src=hash">#jjug_ccc</a> <a href="https://t.co/TQ4b4occ8Y">pic.twitter.com/TQ4b4occ8Y</a></p>&mdash; なかやまさん (@nakayama_san) <a href="https://twitter.com/nakayama_san/status/733936982162710528">2016年5月21日</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

懇親会では、twitterなどでお世話になっていた方々にご挨拶出来てとても楽しかったです。

次回の秋は、2017年にリリースされるであろうJava9を見据えていろいろ動いているであろうプロダクトの話や、様々なJVM言語の話が聞けることを期待してます。

JJUGのスタッフの皆様、スポンサーの皆様、講演者の皆様、参加者の皆様、ありがとうございました。
