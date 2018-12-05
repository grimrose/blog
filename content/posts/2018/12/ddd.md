+++
title = "ぐるぐるDDDで気をつけてること"
date = 2018-12-01T00:00:00Z
draft = false
description = "ぐるぐるDDD モデル探求のうずまき"
categories = ["Blog", "DDD"]
slug = "ddd"
+++

## はじめに

この記事は、[ドメイン駆動設計 Advent Calendar](https://qiita.com/tanaka9230/items/05850cda0d867f1b50e9) の2日目の記事です。

1日目は、[@tanaka9230](https://qiita.com/tanaka9230) さんの [「DDD」にまつわる諸課題の整理](https://qiita.com/tanaka9230/items/05850cda0d867f1b50e9)でした。

3日目は、[@bigwheel](https://qiita.com/bigwheel) さんの [集約の境界と整合性の維持の仕方に悩んで2ヶ月ぐらい結論を出せていない話](https://kbigwheel.hateblo.jp/entry/2018/12/03/aggregate-and-consistency)です。

## ぐるぐるDDDとは

`ぐるぐるDDD` で検索すると、[@haradakiro](https://twitter.com/haradakiro) さんの資料がみつかると思います。

DDDとScrumを回していくことで、モデリングと実装をしていくやり方です。

> <iframe src="//www.slideshare.net/slideshow/embed_code/key/6Vd6V841eIPzi" width="340" height="290" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/kiroh/scrum-andddd-tdc2013distss" title="ぐるぐるDDD/Scrum - モデリングと実装のうずまきをまわそう" target="_blank">ぐるぐるDDD/Scrum - モデリングと実装のうずまきをまわそう</a> </strong> from <strong><a href="//www.slideshare.net/kiroh" target="_blank">Kiro Harada</a></strong> </div>

> <iframe src="//www.slideshare.net/slideshow/embed_code/key/z8cN8K0nUD4lzS" width="340" height="290" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/kiroh/ddd-57993554" title="ぐるぐるDDDは何を目指しているのか" target="_blank">ぐるぐるDDDは何を目指しているのか</a> </strong> from <strong><a href="//www.slideshare.net/kiroh" target="_blank">Kiro Harada</a></strong> </div>

ドメイン駆動設計というとどうしても実装の話が多いので、どうやってやっていくと、モデルと実装の乖離を減らしつつ、要求に答えられるシステムを開発出来るのか、
自分が気をつけてることを書きたいと思います。

### モデル探求のうずまき

![DDD_Model_Exploration_Whirlpool](http://domainlanguage.com/wp-content/uploads/2016/04/DDD_Model_Exploration_Whirlpool.png)

> https://domainlanguage.com/ddd/whirlpool/

この絵は、端的に`シナリオ`と`モデル`と`コードによる探査`をどのように扱うかを表しています。

注目してほしいのが、うずまきが`シナリオ`、`モデル`、`コードによる探査`それぞれにもあるところです。

どうしても大きいうずまきが注目されがちですが、各個のうずまきが回らない、停滞してしまうと前に進めることが出来ません。

## 気をつけてること

停滞させないように以下のことを気をつけてます。

* 捨てやすいように設計及び実装する。
* シナリオでどんなイベントが発生して、どのような状態になるかを考える。

特に捨てやすいように設計しておくことで、シナリオでモデルを揺さぶったときに変更が生じても影響範囲を特定しやすかったり、
必要なくなった場合はサクッとコードごと消したり、機能フラグを切り替えたりすることで、いつでも消せるようにしておける余裕をもたらすことが可能になります。

また、[ストラングラーアプリケーション](http://bliki-ja.github.io/StranglerApplication/)のように、捨てやすいようにしておくことで、
時間が経過したとしても、フェードアウトしやすいので無駄にヘイトを貯めることが減ります。

何をもって捨てやすいかは、システムの規模や実装言語などによって定義しにくいとは思いますが、ぐるぐるDDDを回す上でタイムボックスを守れる、
長期にわたってもいつでも消せる状態にあるというのは、要素として上げられるのではないかと思います。

あと、`ドメインイベントはimmutableである`という制約を元にシナリオを読み解くことで、
リプレイする際にどの時にどの状態になるかということが何度でも確認できたり、
その時のシナリオでは漏れてたであろうドメインイベントを浮かび上がらせることが出来ると思います。

## おわりに

今のプロダクトにも技術的負債は残ってますし、捨てやすい設計になっている箇所はまだまだ少ないです。

それでも、自分がこの`ぐるぐるDDD`があっていると感じるのは、全て携わって業務の理解がそのままコードになっていくことが改善に繋がっていく体験がとても楽しかったからです。

この`ぐるぐるDDD`の無限に続く`うずまき`が描く軌跡が`黄金の回転`になる日がいつか来るでしょう。
