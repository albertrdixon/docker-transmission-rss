FROM ruby:2.2-slim
MAINTAINER Albert Dixon <albert@dixon.rocks>

RUN gem install transmission-rss
ADD config /etc/transmission-rss.conf
CMD ["/usr/local/bin/transmission-rss"]
