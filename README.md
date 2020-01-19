# blog

http://grimrose.github.io/blog

based on [Hugo], [hugo-zen], [Font-Awesome]

## status

[![Actions Status](https://github.com/grimrose/blog/workflows/github%20pages/badge.svg)](https://github.com/grimrose/blog/actions?query=workflow%3A"github+pages")

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
