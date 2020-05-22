

name=postgres_source
connector.class=io.confluent.connect.jdbc.JdbcSourceConnector
tasks.max=1
connection.url=jdbc:postgresql://postgres:5432/postgres_test
connection.user=postgres_test
connection.password=postgres_test
topic.prefix=postgres_test
mode=timestamp
timestamp.column.name=last_altered
validate.non.null=false

cat << EOF > postgres_source.json
{
  "name": "postgres_source",
  "config": {
    "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
    "tasks.max": "1",
    "connection.url": "jdbc:postgresql://postgres:5432/postgres_test",
    "connection.user": "postgres_test",
    "connection.password": "postgres_test",
    "topic.prefix": "postgres_test",
    "mode": "timestamp",
    "timestamp.column.name": "last_altered",
    "validate.non.null": false
  }
}
EOF
curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" -d @postgres_source.json /api/kafka-connect/connectors

docker ps (find container id)

sudo docker exec -it (container id)  bash

kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic postgres_test

CTRL+D
