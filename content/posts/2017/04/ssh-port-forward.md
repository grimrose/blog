+++
categories = ["Blog", "Scala", "Groovy"]
date = "2017-04-23T00:00:00Z"
description = "SSH port forward on java ssh"
draft = false
slug = "ssh-port-forward"
title = "JVMからSSHのポート転送でJDBC接続する"

+++

## はじめに

仕事上、windowsの端末からリモートのlinuxのDBにデータを送る必要があったのですが、
GUIでの手作業はしんどいので、簡単なツールを作ることにしました。

幸いなことにJVMが入っているので、JavaのSSHクライアントとJDBCを使ってやってみました。

## 検証

[grimrose/ssh-port-forward-study](https://github.com/grimrose/ssh-port-forward-study)

対象のサーバは、模擬的にDockerで作りました。

使用した言語は、慣れているgroovyと仕事で使ってるscala、ライブラリは、以下の通り。

* groovy
  * [groovy-ssh](https://gradle-ssh-plugin.github.io/)
  * [groovy-sql](http://groovy-lang.org/databases.html)
* scala
  * [dacr/jassh](https://github.com/dacr/jassh)
  * [ScalikeJDBC](http://scalikejdbc.org/)

どちらのSSHクライアントも[JSch](http://www.jcraft.com/jsch/)をベースにしているのですが、Javaで書くよりだいぶ楽になっています。

SSHからリモートのコマンドやシェルスクリプトを動作させたり、実行結果の文字列やexit codeを受け取って更に次に繋げられるようになっていたり、
その他にもsftpやいろいろコマンドが用意されているみたいなので、デプロイツールとしてやミドルウェアの検証にも使えそうです。

## おわりに

windowsという制約はちょっとしたツールを作るだけでもホントにしんどいので、JVMがあってよかったと思ってます。

JVMやその他の言語でもランタイムをwindowsで動かせるようにしている人たちに感謝しつつ、日々の業務を楽にしていきたいと思います。
