+++
categories = ["Blog", "Java", "JUnit"]
date = "2015-09-19T00:04:27+09:00"
description = "crowdfunding JUnit Lambda"
draft = false
slug = "junit-lambda"
title = "JUnit Lambda に寄付をしました #fundJUnit"

+++

[@t_wada](https://twitter.com/t_wada) さんのツイートから知りましたが、JUnitのプロジェクトが援助を求めているそうです。

> <blockquote class="twitter-tweet" lang="ja"><p lang="ja" dir="ltr">JUnit がクラウドファンディングで援助を求めている。現在フルタイムのメンテナがおらず、 issue 解決や Java8 対応 (特にラムダ式) の余力が無い。現時点の JUnit の問題点や将来像も示されている <a href="https://twitter.com/hashtag/fundJUn?src=hash">#fundJUn</a>… <a href="http://t.co/o8ijOxTWr2">http://t.co/o8ijOxTWr2</a></p>&mdash; Takuto Wada (@t_wada) <a href="https://twitter.com/t_wada/status/644085548374605824">2015, 9月 16</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

[Crowdfunding JUnit Lambda](http://junit.org/junit-lambda.html)

日本語での詳細な内容については、[JUnitの開発が資金不足で行き詰まり。クラウドファンディングで寄付金を募集中](http://www.publickey1.jp/blog/15/junit.html) を見ていだくのがいいと思います。

## JUnitと私

個人的にJUnitを真面目に使い始めたのは、TDDBCで使い方を教わってからだと思います。

その時教えていただいた渡辺さんが書かれた[JUnit実践入門](http://gihyo.jp/book/2012/978-4-7741-5377-3)を読んで、Javaでユニットテストを書くにはどうしたら良いかを学ぶことが出来ました。

それからGroovyと出会い、[Spock Framework](https://github.com/spockframework)に惚れてTDDBCのGroovyのTAをやったり、アジャイルサムライのイベントで紹介をしたりしてました。

現在の仕事では、[PHPUnit](https://phpunit.de/)、[ScalaTest](http://www.scalatest.org/)を使っています。

xUnit系テスティングフレームワークは、テストを書く際に覚えることが少なくて、ユニットテストの書き方を学ぶ際に、余計なことを覚えなくても済むのがメリットだと思います。

あと、モダンな言語であればだいたい備わっているので、言語を覚える際にもassertionの書き方を覚えればなんとか始められます。
それまでユニットテストを書く際の経験がそのまま言語を学ぶ際にも応用が出来るのが、xUnit系のテスティングフレームワークの良いところだと思います。

個人的にJUnitがもう少し頑張って欲しいのは、「パラメタライズドテストの書き方」、「失敗時のメッセージが分かりにくい」だと思います。

これはSpockを知ってしまってから、余計に感じるようになったと思います。

もちろんJavaの言語仕様として難しい部分もあると思いますが、出来れば`power-assert`は入って欲しいと願ってます。

`power-assert`については、日本語では[The power-assert Leaves From Moratorium](http://codelunch.fm/16/)がまとまっていると思います。

今回のFundingでどこまで機能が盛り込まれたり、改善されるかは経過を見守る必要があると思います。

Java8対応で特にDateTime APIでMatcherが早急に欲しい人は、[AssertJ](http://joel-costigliola.github.io/assertj/index.html)を検討してみるのも良いかもしれません。

## おわりに

opensslと同様の経緯をまさかJUnitも歩んでいるとは思ってもいませんでした。

普段使っていたり、過去お世話になったOSSがメンテナンスされ続けるのは、誰かの犠牲や善意によって成り立っているのだと感じました。

また、「コードを書く」以外の事で貢献出来る何かを改めて考えさせられました。

もし、JUnitを使っていたり、今後も使い続ける事になるのであれば、既にゴール金額に到達していますが、寄付を考えてみてはいかがでしょうか？
