+++
categories = ["Blog", "Java", "Groovy", "Scala"]
date = "2016-12-10T00:00:00Z"
description = ""
draft = false
slug = "gadvent-2016"
title = "GParsのActorでアクターモデルに入門する"

+++

## はじめに

この記事は、[G*Advent Calendar(Groovy,Grails,Gradle,Spock...) Advent Calendar 2016](http://qiita.com/advent-calendar/2016/gastah)の10日目のエントリです。

9日目 > [nobeans](http://qiita.com/nobeans)さんの[GrailsでUnix/Linux的実行可能WARファイルをつくる](https://www.ntts.co.jp/column/nakano_blog/20161209/index.html)です。

11日目 > [tyama](http://qiita.com/tyama)さんです。


## GParsとは

[GPars](http://www.gpars.org/)は、GroovyとJavaで利用できる並行・並列処理を利用しやすくなるライブラリです。

[[Groovy]GParsで並列処理（基本＆コレクション編）](http://qiita.com/saba1024/items/29bc32f3390facbaa5c5)を見ていただくと、
旧来のThreadや、java.util.concurrentをそのまま使うよりも並行処理が書きやすそうだと感じたのではないでしょうか。

GroovyがApacheに寄贈され、codehausが停止してしまったため、ソースコードやドキュメントがgithubに移管されています。

[GPars/GPars](https://github.com/GPars/GPars)

versionは、`1.2.1`のままです。

ですので、Gradleで利用する際は、以下のように依存を追加すれば利用できるようになります。

```groovy
// https://mvnrepository.com/artifact/org.codehaus.gpars/gpars
compile group: 'org.codehaus.gpars', name: 'gpars', version: '1.2.1'
```

## Actorモデルについて

アクターモデルについては、[アクターモデル](https://ja.wikipedia.org/wiki/%E3%82%A2%E3%82%AF%E3%82%BF%E3%83%BC%E3%83%A2%E3%83%87%E3%83%AB)を見てください。

アクターモデルの実装されているもので代表的なものは、[Erlang](http://www.erlang.org/)と[Akka](http://akka.io/)が挙げられます。

この2つについては、もうエコシステムとも呼べるようなものになってしまっているので、アクターモデルだけを知ろうとすると、どこから手をつけていいのか分かりにくくなります。

そこで、GParsのActorを使ってアクターモデルの考え方を理解して行こうと思います。

## GParsのActor

GParsのActorの[ドキュメント](http://www.gpars.org/guide/guide/actors.html)を見ると、Actorの作り方はとてもシンプルです。

```groovy
import groovyx.gpars.actor.Actor

def actor = Actors.actor {
    loop {
        react { msg ->
            println "Received: $msg"
        }
    }
}

actor.send 'Hello, GPars!'

actor.join() // 停止するまで立ち上がったままにする。

// 止めるときはCtrl-C or プロセスを落とす
```

いわゆる`PingPong`をする場合はこんな感じです。

```groovy
@Immutable
class PingMessage {
    String message
}

@Immutable
class PongMessage {
    String message
}

@Log
class PongActor extends DefaultActor {
    @Override
    protected void act() {
        loop {
            react { msg ->
                log.info "Pong Received: $msg"
                switch (msg) {
                    case PingMessage:
                        reply new PongMessage(message: msg.message)
                }
            }
        }
    }
}

@Log
class Main {
    static void main(args) {
        log.info("start")

        def pingActor = Actors.actor {
            loop {
                react { msg ->
                    log.info "Ping Received: $msg"
                    switch (msg) {
                        case String:
                            reply new PingMessage(message: msg)
                            break
                        case PongMessage:
                            terminate() // actorを停止させる
                            break
                    }
                }
            }
        }

        def pongActor = new PongActor().start()

        pingActor.send 'Hello, GPars!', pongActor

        // 1秒だけ待つ
        [pingActor, pongActor]*.join(1, TimeUnit.SECONDS)

        log.info("end")
    }
}
```

ちょっとAkkaのActorに似せるように書いて見ましたが、いかがでしょうか。

Groovyはswitch文の`case`にクラスを指定することも出来るので、Scalaのパターンマッチっぽく見えます。

また、[@Immutable](http://docs.groovy-lang.org/latest/html/gapi/groovy/transform/Immutable.html)を使うことで、
GroovyのAST変換用いて`case class`っぽいクラスを作ることも出来ます。

Akkaでは、[ActorSystem](http://doc.akka.io/docs/akka/current/general/actor-systems.html#actor-systems)と呼ばれる`Supervisor`を使用して、
アクターの階層構造を構築していきますが、GParsのActorにはありません。

GParsの資料を色々探していたところ、 [6.2. Supervising](http://mariogarcia.github.io/gpars-workshop/#_supervising)を見つけました。

以下のコードを見る限り、頑張ればやれそうです。

> <script src="https://gist.github.com/mariogarcia/a740f0b58f80f6a6d5f3.js"></script>

こうして見ると、AkkaのActorSystemは、かなり成熟しているので、理解することで巨人の肩に乗ることが出来ると思います。

## 終わりに

駆け足でGParsのActorを紹介して見ましたが、いかがでしょうか。

同じJVMで動くAkkaに比べて機能としては少ないかもしれませんが、ここで紹介した`DefaultActor`以外にも、
より柔軟に条件が書ける`DynamicDispatchActor`や、`Actors`ヘルパークラスを使って簡単にactorを作れたり等、
Actorモデルを理解するには十分な機能が揃っています。

GPars自体は、Actorだけでなく、他にもSTMやCSPなど並行・並列処理に向いた機能を提供しています。

Jetty等のコンテナを利用していると意識しなくても並行処理が利用できてしまいますが、
並行・並列処理をより知りたくなった際には、GParsを使って理論の理解に役立ててください。
