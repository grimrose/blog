+++
title = "BuriKaigi2018 に参加してきました #burikaigi"
date = 2018-02-05T00:00:00Z
draft = false
description = "BuriKaigi"
categories = ["Blog"]
slug = "buri-kaigi"
+++

## はじめに

https://toyama-eng.connpass.com/event/72023/

以前から気になっていたので、万難を排して参加することにしました。

今年は、勉強会に参加するならLTまたは発表するのを心がけて行こうと思っているので、
Java + αの延長でLT出来ればいいかと思い、LT枠で参加してました
(後で、地元の方がLT枠空いているか確認されていたので、申し訳ないことをしてしまったと思いました)。


## Scalaの導入について

発表した内容は、こちら。

https://gist.github.com/grimrose/aacbad883617b025f3300d220e266217

主に、[ScalaMatsuri 2018](http://2018.scalamatsuri.org)の告知と、Scalaを導入した後の振り返りを話しました。

Scalaをチームに導入した後で、プロダクトコードを任せられる程度に書けるようになるまでは、レビューがどうしても必要になりますし、
Better Javaとしてのコードが多くなるのは避けられないと思います。

確かに関数型プログラミングを駆使したほうがScalaっぽいのは分かりますが、今のプロジェクトではそこまで求められる要件が今のところ少ないので、割り切っている部分もあります。

但し、関数型プログラミングでもOption, Either, Validationのように業務ロジックでは避けられないエラー処理と集約に必須なので、丁寧に教えて使ってもらってます。

社内勉強会も後々のプロダクトコード書くことを見据えて、ハマった時に探す手段や良し悪しを重視しました。

ですので、自分で調べて進んでいけるような人で無ければ、そもそもリソースが足りていない小さいチームでの教育を十分行うには難しいと思います。

そうでないような人は、初めからチームに入れない、採用しない、そういったチームであることを伝えるといった手段を行使しないと上手く運営出来ないというのが、今の認識です。

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">小さな会社で新しい技術を採用するのは簡単なんだけど継続性を持たせる事が難しい。この辺りは結局採用する人がどれだけ本気になって、広めたり人を集めたり、教育したりできるかなんだろうな。</p>&mdash; V (@voluntas) <a href="https://twitter.com/voluntas/status/954997468973776896?ref_src=twsrc%5Etfw">January 21, 2018</a></blockquote>

LTでもVさんのツイートを紹介しましたが、自分たちのような事業会社の小さいエンジニアのチームで、持続可能な開発をしていくための環境づくりをどうして行ったらいいのか。
を考えていくことになりそうなので、いろいろ試行錯誤しながら前に進んで行ければと思います。


## 鰤

<blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/BeuFqH8D1ph/" data-instgrm-version="8" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/BeuFqH8D1ph/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">@grimrose7がシェアした投稿</a> - <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2018-02-03T03:52:35+00:00"> 2月 2, 2018 at 7:52午後 PST</time></p></div></blockquote>

氷見の寒ブリを勉強会の前に楽しんでました。

<blockquote class="twitter-tweet" data-lang="en"><p lang="und" dir="ltr"><a href="https://twitter.com/hashtag/burikaigi?src=hash&amp;ref_src=twsrc%5Etfw">#burikaigi</a> <a href="https://t.co/t7cKvz5TPo">pic.twitter.com/t7cKvz5TPo</a></p>&mdash; とーます (@grimrose) <a href="https://twitter.com/grimrose/status/959730225197166592?ref_src=twsrc%5Etfw">February 3, 2018</a></blockquote>

本番(?)の懇親会では、舟盛りが凄かった。

刺身とブリしゃぶで味が違ったんだけど、確かにそれぞれ美味しかった。

写真を撮り忘れるくらい、どんどんごちそうが出てきて、美味しかった。


## 富山ブラック

<blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/BewiIwjDbVu/" data-instgrm-version="8" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/BewiIwjDbVu/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">@grimrose7がシェアした投稿</a> - <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2018-02-04T02:39:54+00:00"> 2月 3, 2018 at 6:39午後 PST</time></p></div></blockquote> 

駅のそばで食べられたので、満足です。


## おわりに

いたせりつくせりだったので、大変だったとは思いますが、BuriKaigiのスタッフの方のサポートが無かったら、ここまで楽しむことが出来なかったと思います。
ありがとうございました。

次回もまた、鰤を学ぶ(食べる)ために、参加したいと思います。

---
<script async defer src="//platform.instagram.com/en_US/embeds.js"></script>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
