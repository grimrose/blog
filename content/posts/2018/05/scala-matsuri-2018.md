+++
title = "Scala Matsuri 2018に参加してきました #ScalaMatsuri"
date = 2018-05-04T00:00:00Z
draft = false
description = "Scala Matsuri 2018"
categories = ["Blog", "Scala", "ScalaMatsuri"]
slug = "scala-matsuri"
+++

## はじめに

[ScalaMatsuri](http://scalamatsuri.org/)

今年もスタッフとして、参加してきました。

## 担当

今回担当したのは、ほぼWeb周り全般でした。

### Web周り

今回も、前年のをベースにしつつ、以下のような改善をしてました。

* 新たに簡体字と繁体字のトップページに追加
* 更新コストの削減のためテンプレート化
* エラー検知が出来るようにした

特に更新コストの削減のためのテンプレート化は、振り返ってみてやっておいて正解だったと思いました。

トップページは、開催までの告知や、アンカンファレンス当日でのタイムテーブルの表示等で一番変更が加わるので、
変更に関係ない箇所はどんどん切り出してincludeするようにしておきました。

アンカンファレンスのタイムテーブルが去年より早く公開出来たのは、個人的に満足でした。
が、コピペミスで一部のセッションの時間帯を間違えていたので、ミスを減らせるような仕組みにしておく必要がありそうです。

テンプレート化に併せてタイプミスや入力漏れを予め検知出来るようにしたのですが、
jekyllがというよりテンプレートエンジンであるliquidがエラーのメッセージが人に優しくないので、
来年以降は、別の仕組みでなんとか出来るといいかもしれません。

その他にも、当日指摘を受けて会場までの地図をGoogle Mapのに変えたりしてました。

> <blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">載ってる地図は新宿だし、会場への道案内はこちら、をみつけたけど懇親会だし、サイトに関してはとにかくひどい。みんなどうやってたどりついてるんや。。。 <a href="https://twitter.com/hashtag/ScalaMatsuri?src=hash&amp;ref_src=twsrc%5Etfw">#ScalaMatsuri</a></p>&mdash; きしだൠ (@kis) <a href="https://twitter.com/kis/status/974827259570806784?ref_src=twsrc%5Etfw">March 17, 2018</a></blockquote>

中の人になると指摘を受けるまで気づけなかったりするので、こういった指摘は本当にありがたいです。

typoなどを気づいてPull Requestをくださる方がいらっしゃって、とても助かりました。

ありがとうございました。

来年への改善点ややりたいこと等をまとめておこうとおもいます。

## 当日

当日は、進行やタイムキーパー等をやっていました。

聞きたいセッションはほぼ聴けたのと、アンカンファレンスでは自分で書いたテーマさ採択されてセッションを受け持つことが出来たので、よかったです。

> <blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">自分の知りたい事がニッチなので、なにげに unconferenceの方が本番な気がする <a href="https://twitter.com/hashtag/scalamatsuri?src=hash&amp;ref_src=twsrc%5Etfw">#scalamatsuri</a></p>&mdash; とーます@悪いオタクらしい (@grimrose) <a href="https://twitter.com/grimrose/status/974986077227249665?ref_src=twsrc%5Etfw">March 17, 2018</a></blockquote>

アンカンファレンスのセッションでは、以下のような内容のをハンガーフライト形式でやってみました。

> <blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">16:00からのセッションの概要です。よろしくお願いします。<br>ScalaMatsuri 2018 業務システム in Scalaの概要 <a href="https://t.co/x6utGcQvYY">https://t.co/x6utGcQvYY</a> <a href="https://twitter.com/hashtag/scalamatsuri?src=hash&amp;ref_src=twsrc%5Etfw">#scalamatsuri</a> <a href="https://t.co/RHu2mnehp5">https://t.co/RHu2mnehp5</a></p>&mdash; とーます@悪いオタクらしい (@grimrose) <a href="https://twitter.com/grimrose/status/975226037402398720?ref_src=twsrc%5Etfw">March 18, 2018</a></blockquote>

きっかけとしては、なかなかWebサービスのように外に見えやすいシステムに比べ、外に見えにくい場所にあるシステムなので、
他の人がどうやっているのか興味があったので、出してみました。

私が当初想定したのは、自社の社内向けの業務システムでScalaを使ってる人を対象にしてましたが、
思った以上に受託などで業務システムでScalaを扱っている人が多かったのが、興味深かったです。

終えてみて、各自の体験談や知見を共有出来たので、やってみてよかったのでは無いかと思いました。

拙いファシリテーションでしたが、なんとかタイムボックスを守って終えることが出来ました。

## おわりに

遅くなってしまいましたが、ご参加いただいた皆さん、ご協賛いただいたスポンサーの皆さん、そして一緒に尽力してくださったスタッフの皆さん、本当にありがとうございました。

---

<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
