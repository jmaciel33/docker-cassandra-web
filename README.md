# Docker Cassandra Web
Docker image for [Cassandra web](https://github.com/avalanche123/cassandra-web)

## Usage

```docker
docker run -d --name cassandra-web \  
-e CASSANDRA_HOST_IP=127.0.0.1 \   
-e CASSANDRA_PORT=9042 \  
-e CASSANDRA_USERNAME=cassandra \  
-e CASSANDRA_PASSOWRD=cassandra \
-e CASSANDRA_WEB_PORT=8080 \  
-p 8080:8080 \  
jmaciel33/docker-cassandra-web:latest
 ```

## Environment Variables
```
CASSANDRA_HOST_IP = coma-separated list of cassandra hosts (default: 127.0.0.1)
CASSANDRA_PORT = integer port that cassandra is running on (default: 9042)
CASSANDRA_USERNAME = username to use when connecting to cassandra (default: cassandra)
CASSANDRA_PASSOWRD = password to use when connecting to cassandra (default: cassandra)
CASSANDRA_WEB_PORT = ip:port or path for cassandra web to bind on (default: 0.0.0.0:3000)
CASSANDRA_WEB_LOG_LEVEL= log level (default: info)
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)


