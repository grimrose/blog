# blog

http://grimrose.github.io/blog

based on [Hugo], [hugo-zen], [Font-Awesome]

## status

[![wercker status](https://app.wercker.com/status/f644e521f1414b8652ab3a337d607cb4/m/master "wercker status")](https://app.wercker.com/project/bykey/f644e521f1414b8652ab3a337d607cb4)

[Hugo]: http://gohugo.io/
[hugo-zen]: https://github.com/rakuishi/hugo-zen
[Font-Awesome]: http://fortawesome.github.io/Font-Awesome/

## local

require [docker], [docker-compose]

### create new post

```sh
$ docker-compose run --rm hugo new posts/YYYY/MM/${_TITLE}.md
```

### watch local server

```sh
$ docker-compose up -d
```

[docker]: https://www.docker.com
[docker-compose]: https://docs.docker.com/compose/
