+++
categories = ["Blog", "Java", "Groovy", "Spock"]
date = "2015-12-13T19:45:32+09:00"
description = "digital book about spock framework"
draft = false
slug = "gadvent-2015"
title = "Spock Frameworkに関する電子書籍たち"

+++

## はじめに

この記事は、[G* Advent Calendar 2015](http://qiita.com/advent-calendar/2015/gastah)の19日目のエントリです。

## Spockについて

[Spock Framework]は、JavaやGroovyで作られたアプリケーション向けのテスティングフレームワークです。

個人的に[Spock Framework]が好きな理由の一つは、**power-assert**機能です。

power-assertが他の言語のテスティングフレームワークでも取り入れられていったのは、覚えるAPIが少ない上にテストで失敗した時の情報が分かりやすいからだと思います。

> [アサーション失敗時の情報量を大幅に増やすことができるPower Assertの系譜](http://togetter.com/li/435920)

仕事では[ScalaTest](http://www.scalatest.org/)を使っていますが、
power-assertのように使える[DiagrammedAssertions](http://doc.scalatest.org/2.2.1/index.html#org.scalatest.DiagrammedAssertions)をメインに使ってます。

その他にもパラメタライズドテストが書きやすかったり、Given-When-Thenと振る舞いを分かりやすく書ける機能があったりと、開発者がテストを書くのを助けてくれるのがとても好きです。

2015年の[Spock Framework]と言えば、なんと言ってもついに1.0がリリースされたのことでしょう。

[Google Codeが終了する](http://googledevjp.blogspot.jp/2015/04/google-code.html)するにあたって、さまざまな事が一気に前進したように思えます。

公式のリファレンスもGitHubに移動し、[Spock Framework Reference Documentation](https://spockframework.github.io/spock/docs/)として公開されています。

JUnit5がリリースされるとなるとSpockもどのように対応するのか楽しみではあります。

## Spockを題材とした電子書籍

日本でも利用されている方が増えてきたおかげか日本語の記事や情報を見かける機会が増えましたが、本格的に導入していこうとすると英語の記事を見ることになります。

公式のリファレンスが充実しているので困ることは少ないですが、やはり自分たちのユースケースに近いサンプルがあるのが望ましいと思います。

そういう場合は書籍の出番となりますが、今回は入手しやすい電子書籍を探してみました。

普段利用している電子書籍を購入できるサイトで、Spockに関する書籍が見つかったのは、以下のとおりです。

* [O'Reilly]
* [Manning Publications]
* [Leanpub]

[O'Reilly]は有名なので割愛するとして、[Manning Publications]は[Groovy In Action](https://www.manning.com/books/groovy-in-action)や
[Grails in Action](https://www.manning.com/books/grails-in-action)で以前からGroovyに関する書籍を取り扱っているのは知ってました。

注目したいのは、[Leanpub]で以前[Everyday Rails - RSpecによるRailsテスト入門](https://leanpub.com/everydayrailsrspec-jp)を購入した際に利用していました。

Groovyについて困っている時やどう書いたらいいのか分からない時に[Messages from mrhaki](http://mrhaki.blogspot.jp/)で探していますが、
その著者が[Leanpub]で[Groovy Goodness Notebook](https://leanpub.com/groovy-goodness-notebook)や[Gradle Goodness Notebook](https://leanpub.com/gradle-goodness-notebook)といった
Groovyに関する書籍を販売しており、その一つにSpockに関するものもありました。

### 購入したもの

これまで購入したのは、以下の3冊です。

* [Spocklight Notebook]
* [Groovy in Action, Second Edition]
* [Spock: Up and Running]

まず[Spocklight Notebook]ですが、[Leanpub]で購入できます。実はWebで全部見れてしまう上に最低価格が$0なので実質Freeなのです。
中身もユースケース毎に細かく分かれているため、自分たちの求めている内容がきっとあると思います。

次に、[Groovy in Action, Second Edition]ですが、こちらは以前にGroovy In Actionを購入していたので、そのまま購入しました。
新しく[Spock Framework]に関する内容なども追記されており、Groovyについてより詳しく知りたい時に役に立ちます。

最後に[Spock: Up and Running]ですが、現在、Early Releaseとして第3章までリリースされています。2016年の3月くらいにはPublishされるみたいです。
今後追加されていくであろうチャプターのタイトルがどれも興味深いものばかりなので、楽しみです。

購入してはないものの以下の電子書籍もSpockについてのチャプターがあったり、コードが提供されているものがあります。

* [Java Testing with Spock](https://www.manning.com/books/java-testing-with-spock)
* [Making Java Groovy](https://www.manning.com/books/making-java-groovy)
* [BDD in Action](https://www.manning.com/books/bdd-in-action)
* [Arquillian in Action](https://www.manning.com/books/arquillian-in-action)
* [Grails in Action, Second Edition](https://www.manning.com/books/grails-in-action-second-edition)

## おわりに

[Spock: Up and Running]についてですが、[Yokohama.groovy](http://connpass.com/series/253/)にて読書会をやってみようと計画しており、
正式にPublishされ次第、開催する予定です。

興味がある方は、[![Gitter](https://badges.gitter.im/yokohamagroovy/support.svg)](https://gitter.im/yokohamagroovy/support?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)で気軽に声をかけてください。

最後に、Javaのアプリケーションでテストコードで楽をしたい人は、是非[Spock Framework]を使ってください。

**Let's enjoy, Groovy!**

[Spock Framework]: https://github.com/spockframework/spock
[Manning Publications]: https://www.manning.com/
[O'Reilly]: http://shop.oreilly.com/home.do
[Leanpub]: https://leanpub.com/
[Spock: Up and Running]: http://shop.oreilly.com/product/0636920038597.do
[Spocklight Notebook]: https://leanpub.com/spockframeworknotebook
[Groovy in Action, Second Edition]: https://www.manning.com/books/groovy-in-action-second-edition