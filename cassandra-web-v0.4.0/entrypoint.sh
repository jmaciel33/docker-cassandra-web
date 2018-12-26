#!/bin/bash
set -eu

#HOST IP coma-separated list of cassandra hosts (default: 127.0.0.1)
if [[ ! -v CASSANDRA_HOST_IP ]]; then
  CASSANDRA_HOST_IP="127.0.0.1"
else
  CASSANDRA_HOST_IP="${CASSANDRA_HOST_IP}"
fi

#PORT integer port that cassandra is running on (default: 9042)
if [[ ! -v CASSANDRA_PORT ]]; then
  CASSANDRA_PORT="9042"
else
  CASSANDRA_PORT="${CASSANDRA_PORT}"
fi

#USERNAME username to use when connecting to cassandra (default: cassandra)
if [[ ! -v CASSANDRA_USERNAME ]]; then
  CASSANDRA_USERNAME="cassandra"
else
  CASSANDRA_USERNAME="${CASSANDRA_USERNAME}"
fi

#PASSWORD password to use when connecting to cassandra (default: cassandra)
if [[ ! -v CASSANDRA_PASSOWRD ]]; then
  CASSANDRA_PASSOWRD="cassandra"
else
  CASSANDRA_PASSOWRD="${CASSANDRA_PASSOWRD}"
fi

#BIND 'ip:port or path for cassandra web to bind on (default: 0.0.0.0:3000)')
if [[ ! -v CASSANDRA_WEB_PORT ]]; then
  CASSANDRA_WEB_PORT="0.0.0.0:3000"
else
  CASSANDRA_WEB_PORT="0.0.0.0:${CASSANDRA_WEB_PORT}"
fi

#CASSANDRA_WEB_LOG_LEVEL= log level (default: info)
if [[ ! -v CASSANDRA_WEB_LOG_LEVEL ]]; then
  CASSANDRA_WEB_LOG_LEVEL="info"
else
  CASSANDRA_WEB_LOG_LEVEL="${CASSANDRA_WEB_LOG_LEVEL}"
fi

COMMAND="cassandra-web --bind $CASSANDRA_WEB_PORT --log-level $CASSANDRA_WEB_LOG_LEVEL --hosts $CASSANDRA_HOST_IP --port $CASSANDRA_PORT --username $CASSANDRA_USERNAME --password $CASSANDRA_PASSOWRD"

echo $COMMAND 

exec $COMMAND
