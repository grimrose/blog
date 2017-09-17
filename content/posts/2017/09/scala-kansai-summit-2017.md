+++
categories = ["Blog", "Scala"]
date = "2017-09-17T00:00:00Z"
description = "Scala Kansai summit 2017"
draft = false
slug = "scala-kansai-summit"
title = "Scala関西 Summit 2017へ参加してきました #scala_ks"

+++

## はじめに

http://summit.scala-kansai.org/

https://skug.connpass.com/event/62304/

去年の[Scala関西 Summit 2016](http://summit.scala-kansai.org/2016/)に参加してまた参加したいと思っていました。

そんな折CfPを受け付けていたので応募したところ受かったので、これまでやってきたことをまとめるいい機会でしたので、発表してきました。

<blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">Scala関西summit <a href="https://twitter.com/hashtag/scala_ks?src=hash">#scala_ks</a> のCfP通ったー。初めて関西でしゃべるぞー。</p>&mdash; とーます (@grimrose) <a href="https://twitter.com/grimrose/status/883952953349906433">2017年7月9日</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## Akka Streamsへ移行しとるんやけどちょっと聞いてや

[スライド](https://nbviewer.jupyter.org/format/slides/github/grimrose/scala-kansai-summit-2017/blob/master/Migration%20to%20Akka%20Streams.ipynb#/)

発表してきたのは、これまでのプロジェクトでやってきたことと、Akka Streamsをプロジェクトの途中から導入したことで何を考えたのかです。

幾つか質問を受けていて、その中で出てきた[Alpakka](http://developer.lightbend.com/docs/alpakka/current/)ですが、まだ[akka-stream-alpakka-csv](http://developer.lightbend.com/docs/alpakka/current/data-transformations/csv.html)だけ導入していて、[akka-stream-alpakka-s3](http://developer.lightbend.com/docs/alpakka/current/s3.html)を含めその他のモジュールについてはまだ検証中です。
モジュールによっても開発中だったりするので、ハマりどころもあります。

初期に導入したScalikeJDBC + SkinnyORMのデータ取り込み処理については、現在のところ他のバッチ処理の優先順位が高く、Akka Streamsの移行対象になってません。

今回紹介した制約ですが、既存の処理をどうやってAkka Streamsへ繋げるか、移行していくかという課題を元に考えたものなので、これを推奨しているわけではありません。

自分の発表の前にAkka Streamsのセッションが並んでいて、スタッフのタイムテーブルの組み方に助けていただいたと思っています。
おかげさまで説明や資料については、このセッションに来るくらいだから前のも来てるだろうという前提で作ることが出来ました。

<blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">Akka Streams 関連のセッション、打順が完璧すぎる……</p>&mdash; にしかわささき (@nishikawasasaki) <a href="https://twitter.com/nishikawasasaki/status/906391579501277184">2017年9月9日</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

失敗したなと思ったのは、本番になると緊張して早口になってしまったのと、
それを緩和するために予めスライドにあと何分かを知れるのを仕込んでいたのにもかかわらず、上手く活用出来ず、予想よりも早く終わってしまったことでした。


## セッション

今回参加したの以下のセッションです。

* ユーザーデータ基盤を１からScalaでつくった話し
* Scala and Akka apps on Kubernetes in ChatWork
* Scala の Functional Programming を支える技術
* Scala on Docker(AWS ECS)
* グラフを知って理解するAkka Stream
* 「Scale with Scala」の道程
* Scala on JVM をプロファイリングするツールの紹介
* Property Based Testingでドメインロジックをテストする

今回一番印象的だったセッションは、ユーザデータ基盤についての話でした。
今関わっているプロジェクトの未来にも繋がる話だったり、周りを巻き込んでの検証をすすめていく方法など大変参考になりました。

トラック数の関係で参加出来なかったセッションも、Twitterのタイムラインを見ていると聞きたかった話ばかりでした。

資料をまとめてくださっていたので、見返しておきたいと思います。

[Scala関西 Summit 2017で公開された資料へのリンク集](http://qiita.com/yoshiyoshifujii/items/617afa805e63bf0d5054)


## おわりに

前日は、スポンサーでもある[燻製と地ビール　和知](https://twitter.com/wachi_kyoto)で呑むために京都へ前乗りしました。

<blockquote class="instagram-media" data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/BYyDWzsjwgT/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">@grimrose7がシェアした投稿</a> - <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2017-09-08T13:41:04+00:00">2017  9月 8 6:41午前 PDT</time></p></div></blockquote>
<script async defer src="//platform.instagram.com/en_US/embeds.js"></script>

翌日は、桃ヴァイツェンを呑むために[ビアベリー天満](http://www.beerbelly.jp/tenma/)へ行ってきました。

<blockquote class="instagram-media" data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/BY2hRSjDPca/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">@grimrose7がシェアした投稿</a> - <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2017-09-10T07:19:25+00:00">2017  9月 10 12:19午前 PDT</time></p></div></blockquote>
<script async defer src="//platform.instagram.com/en_US/embeds.js"></script>

会場があった天満は、他にも美味しそうな場所がいっぱいあったので、次回はもっとまわってみたいと思います。

また来年も参加したいと思います。

参加者、スタッフ、スポンサーの皆様、ありがとうございました。
