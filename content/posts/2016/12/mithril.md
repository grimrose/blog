+++
categories = ["Blog", "Mithril", "TypeScript"]
date = "2016-12-18T00:00:00Z"
description = "Mithril Advent Calendar 2016"
draft = false
slug = "mithril"
title = "Mithril.jsをTypescript2.xで書いてみよう"

+++

## はじめに

この記事は、[Mithril.js Advent Calendar 2016](http://qiita.com/advent-calendar/2016/mithriljs)の18日目のエントリです。

17日目 > [shibukawa](http://qiita.com/shibukawa)さんの[Mithrilで自動補完つきテキストを作る(2)](http://qiita.com/shibukawa/items/10f19a4fa861e76ae9b9)です。

19日目 > [tacnoma](http://qiita.com/tacnoma)さんの[MithrilからRailsサーバーへのファイルアップロードではまった部分](http://qiita.com/tacnoma/items/1dd75404e1969953153c)です。

## @type/mithriljs

Mithril.jsでTypeScriptを使う場合、以前であれば、[typings](https://github.com/typings/typings)で型定義ファイルを取得する必要がありましたが、
TypeScript2.0からは、npmの[@types/mithril](https://www.npmjs.com/package/@types/mithril)で取得できるようになりましたので、

```sh
npm install @types/mithril -D
```

で、他の依存と同じように管理できるようになったことでだいぶ楽になりました。

## 書いてみた

[grimrose/grimrose.github.io](https://github.com/grimrose/grimrose.github.io)

以前から書いていたのを、今回のエントリを書くにあたり、いろいろ機能追加やバージョンアップをしました。

Mithril.jsでTypeScriptを使うときの特徴としては、やはり型の制約が出てくるところです。

特に`m.request`で返ってくるのが、`Mithril.Promise<any>`になるので、そのままではTypeScriptの世界に`any`をばらまいてしまうので、
クラスを用意しマッピングする必要があります。
さらに、JavaScriptでは使えていた`map`などのメソッドが使えないので、`m.deferred`を駆使して、Promiseの世界でやりとりする必要があります。

また、`Component`が`Controller`を要求するので、クラスを作るかinterfaceをキャストしてあげる必要があります。

その他にも、いろいろと型を合わせる必要が出てくるので、ひたすらTypeScript compilerの指摘を受けつつ試行錯誤することになると思います。

新しくTypeScript 2.0で使えるようになった機能は、今後勉強も兼ねて書き直していければと思ってます。

いろいろ依存関係をバージョンアップする関係で、[yarnpkg](https://yarnpkg.com/)で依存管理をするようにしました。
デプロイには、CircleCIを利用していますので[CircleCIでyarnを使う](http://blog.stormcat.io/entry/circleci-npm-yarn)を参考にさせていただきました。


## おわりに

普段の業務では、AngularJS + TypeScriptをメインで書くことが多いのですが、
やはり覚えることが多いのと、JavaScriptが前提になっている記事やコードをTypeScriptへ変換するにはどうしたら良いのかを考える必要が出てきてしまうので、
学習に時間がかかりますね。

その点、Mithril.jsははじめに覚えるAPIの少なさと、そこから深く学ぶには何が必要なのかが全て公式に揃っているのが、とてもありがたいです。
特に[日本語のサイト](http://mithril-ja.js.org/index.html)が、公式に追従してくださっているお陰で、敷居がだいぶ下がっていると思います。

次の1.xはより洗練されたものになると思いますので、とても楽しみです。
