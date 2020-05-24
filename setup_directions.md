source

{
  "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
  "mode": "timestamp",
  "timestamp.column.name": "last_altered",
  "topic.prefix": "postgres_test",
  "validate.non.null": "false",
  "connection.password": "postgres_test",
  "tasks.max": "1",
  "connection.user": "postgres_test",
  "catalog.pattern": "postgres_test",
  "name": "postgres_source",
  "connection.url": "jdbc:postgresql://postgres:5432/postgres_test",
  "table.whitelist": "customers"
}


sink

name=S3SinkConnector
connector.class=io.confluent.connect.s3.S3SinkConnector
topics=TopicName_S3SinkConnector
tasks.max=1
flush.size=
format.class=
schema.generator.class=
s3.bucket.name=
storage.class=
