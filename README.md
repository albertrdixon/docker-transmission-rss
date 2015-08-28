# docker transmission-rss

Use this with a [transmission container](https://github.com/albertrdixon/docker-transmission) to get rss feeds into transmission. Can be run straight away without using your own config, by default it will draw from the yify rss feed.

```
$ docker run --detach \
    --link transmission \
    --volume /path/to/conf.conf:/etc/transmission-rss.conf \
    transmission-rss
```

In your conf.conf, make sure you keep these values at least:

```yaml
...
server:
  host: transmission
  port: <whatever your port is>

...

fork: false
pid_file: false
```
