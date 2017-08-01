FROM ruby:2.3.1-deps
MAINTAINER Adrian Perez <adrian@adrianperez.org>
COPY . /usr/src/app
VOLUME /usr/src/app/source
EXPOSE 4567

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
