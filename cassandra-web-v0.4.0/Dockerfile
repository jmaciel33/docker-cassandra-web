FROM ruby:2.4.1

RUN gem install cassandra-web

ADD entrypoint.sh /

RUN chmod a+x /entrypoint.sh

EXPOSE 3000 8080 443

ENTRYPOINT ["/entrypoint.sh"]
