# docker transmission-rss

Use this with a [transmission container](https://github.com/albertrdixon/docker-transmission) to get rss feeds into transmission.

```
$ docker run --detach \
    --link transmission \
    --volume /path/to/conf.conf:/etc/transmission-rss.conf \
    transmission-rss
```

In your conf.conf:

```yaml
...
server:
  host: transmission
  port: <whatever your port is>

...

fork: false
pid_file: false
```
