+++
date = "2017-12-02T00:00:00Z"
draft = false
title = "#現場で役立つシステム設計の原則 の読書会をしました"
description = "principal of the system architecture"
categories = ["Blog"]
slug = "principal-of-the-system-architecture"
+++

## はじめに

[現場で役立つシステム設計の原則 〜変更を楽で安全にするオブジェクト指向の実践技法](http://gihyo.jp/book/2017/978-4-7741-9087-7)
を使って、中途入社の研修として読書会をしました。

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">若者と現場で役立つシステム設計の原則の読書会を始めた。<br>11月中に終わる予定…</p>&mdash; とーます (@grimrose) <a href="https://twitter.com/grimrose/status/927905073824350208?ref_src=twsrc%5Etfw">November 7, 2017</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

11月中に終わったので、まとめておこうと思います。

## やってたこと

参加者は私と中途入社の2人だけに限定して、毎日空いている1時間を見つけて開催してました。
進め方は、電子版のpdfをモニタに映しつつ、1時間で進められるとこまで進めていくようにしました。

### 第1章　小さくまとめてわかりやすくする
### 第2章　場合分けのロジックを整理する
### 第3章　業務ロジックをわかりやすく整理する

コードのサンプルがJavaだったので、Scalaだとこう書けるよとか、PHPだとこれが出来ないからツライとか、プロダクションコードがこうなっているのはこの考えだからだよとか、実際のコードを見ながら説明をしていたりしてました。

### 第4章　ドメインモデルの考え方で設計する
### 第5章　アプリケーション機能を組み立てる

ドメインオブジェクトを成長させていくには、業務理解と併せてやっていかないといけないから、分析、設計、開発が別れてるようなプロジェクトだと無理だけど、今のプロジェクトはそうじゃないんだよということも伝えていました。

また、プロダクションコードでイケてない部分も見せながら、この考えを参考にしながら改善していきたいというのも併せて伝えました。

### 第6章　データベースの設計とドメインオブジェクト

<blockquote class="twitter-tweet" data-lang="en"><p lang="ja" dir="ltr">若者との現場で役立つシステム設計の原則の読書会も6章のデータベースの話が出てきたので、SQLアンチパターン、 immutable data model、 データベース実践入門、CQRS + ESの話を盛り込んだら時間オーバーした</p>&mdash; とーます (@grimrose) <a href="https://twitter.com/grimrose/status/931145011403489280?ref_src=twsrc%5Etfw">November 16, 2017</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

データ分析の部署なので、データベースに関する箇所を厚くしたら、盛り込みすぎてしまいました。

紹介したのは、以下の資料です。

<iframe src="//www.slideshare.net/slideshow/embed_code/key/2NQtVWVjk3B9Te" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/itohiro73/jjug-ccc-2017-spring-bitemporal-data-modeling-and-reladomo" title="データ履歴管理のためのテンポラルデータモデルとReladomoの紹介 #jjug_ccc #ccc_g3 " target="_blank">データ履歴管理のためのテンポラルデータモデルとReladomoの紹介 #jjug_ccc #ccc_g3 </a> </strong> from <strong><a href="https://www.slideshare.net/itohiro73" target="_blank">Hiroshi Ito</a></strong> </div>

<iframe src="//www.slideshare.net/slideshow/embed_code/key/DCYNA0R8eOzuTk" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/kawasima/ss-40471672" title="イミュータブルデータモデル(入門編)" target="_blank">イミュータブルデータモデル(入門編)</a> </strong> from <strong><a href="https://www.slideshare.net/kawasima" target="_blank">Yoshitaka Kawashima</a></strong> </div>

<iframe src="//www.slideshare.net/slideshow/embed_code/key/wUFig8EBkhNZVN" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/kawasima/ss-44958468" title="イミュータブルデータモデル(世代編)" target="_blank">イミュータブルデータモデル(世代編)</a> </strong> from <strong><a href="https://www.slideshare.net/kawasima" target="_blank">Yoshitaka Kawashima</a></strong> </div>

<iframe src="//www.slideshare.net/slideshow/embed_code/key/5QpOqD5gML4oWQ" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/MasakiToyoshima/ladder-of-cqrses" title="Ladder of cqrs+es" target="_blank">Ladder of cqrs+es</a> </strong> from <strong><a href="https://www.slideshare.net/MasakiToyoshima" target="_blank">Masaki Toyoshima</a></strong> </div>

イミュータブルデータモデルや有効時間データモデルについては、実際にプロダクションで採用するとこうなるんだよという例を見せながら説明すると、納得していたように見えました。

CQRS + ESについては、少なくともCommandとQueryを分けると責務もはっきりするし、参照が多いレポジトリのクラスがいろいろ巻き込んで肥大化するのを避けることが出来るという自分の考えも伝えていました。

### 第7章　画面とドメインオブジェクトの設計を連動させる
### 第8章　アプリケーション間の連携

プレゼンテーション層については、今のプロダクションコードを見つつ、PHPのテンプレートに埋め込む部分と、Angular側に任せる部分と、APIとして何をレスポンスを返すのがいいかを、過去の経緯と今の考えを踏まえつつ説明してました。

RESTをどこまで厳密にやるのが今のプロジェクトにあってるのか、あってるとしたらどのドメインのコンテキストなのかを一緒に考えながら、話し合っていました。

興味を持っている[GraphQL](http://graphql.org/)についてや、Akkaだとメッセージ基盤も内包してることを紹介してたりしてました。

### 第9章　オブジェクト指向の開発プロセス

SIerあるあるネタがお互いに出てきたので、どこも今もあんま変わってないんだなと思いました。

### 第10章　オブジェクト指向設計の学び方と教え方

オブジェクト指向エクササイズについては、麻疹にかかるように一度やり過ぎるくらいにやってから、現場でどこまで適用するのがいいのか考える必要があることを伝えていました。

最後の回では、[「現場で役立つシステム設計の原則」批判 (1) ～何のために、「データとロジックを一体に」するのか？～](http://phpmentors.jp/post/164775567158/%E7%8F%BE%E5%A0%B4%E3%81%A7%E5%BD%B9%E7%AB%8B%E3%81%A4%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E8%A8%AD%E8%A8%88%E3%81%AE%E5%8E%9F%E5%89%87%E6%89%B9%E5%88%A4-1)
や[「現場で役立つシステム設計の原則」批判 (2) ～ポリモーフィズムは何のために？～](http://phpmentors.jp/post/165184612628/%E7%8F%BE%E5%A0%B4%E3%81%A7%E5%BD%B9%E7%AB%8B%E3%81%A4%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E8%A8%AD%E8%A8%88%E3%81%AE%E5%8E%9F%E5%89%87%E6%89%B9%E5%88%A4-2-%E3%83%9D%E3%83%AA%E3%83%A2%E3%83%BC%E3%83%95%E3%82%A3%E3%82%BA%E3%83%A0%E3%81%AF%E4%BD%95%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AB)
を紹介しつつ、プロダクションコードの中の似たような箇所を見せつつ、どうしたらいいか自分なりの考えを出してもらいました。

## おわりに

今のプロダクションコードを見ながら、この本で指摘されている内容と照らし合わせていくと、
自分自身の振り返りも出来たので、こういった機会を定期的に設けるのはありなのかもしれないと思いました。
