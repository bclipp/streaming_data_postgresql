1. create .env file with the following values:
```
AWS_ACCESS_KEY_ID=<..>
AWS_SECRET_ACCESS_KEY=<...>
AWS_DEFAULT_REGION=<must be same as bucket's region>
```
1. sudo docker-compose up
2. browse to http://localhost:3030/
3. open up connectors

4. Add
#### JDBC Source  Connector
```
connector.class=io.confluent.connect.jdbc.JdbcSourceConnector
mode=timestamp
timestamp.column.name=last_altered
topic.prefix=postgres_test
validate.non.null=false
connection.password=postgres_test
tasks.max=1
connection.user=postgres_test
catalog.pattern=postgres_test
name=postgres_source
connection.url=jdbc:postgresql://postgres:5432/postgres_test
table.whitelist=customers
```

5. Then Add
#### AWS S3 Sink Connector

```
name=S3SinkConnector_postgres
connector.class=io.confluent.connect.s3.S3SinkConnector
topics=postgres_testcustomers
tasks.max=1
flush.size=1
s3.region=us-east-1
s3.part.size=5242880
format.class=io.confluent.connect.s3.format.json.JsonFormat
partitioner.class=io.confluent.connect.storage.partitioner.DefaultPartitioner
schema.compatibility=NONE
schema.generator.class=io.confluent.connect.storage.hive.schema.DefaultSchemaGenerator
s3.bucket.name=bclipp770
topics.dir=postgres_stream_test
storage.class=io.confluent.connect.s3.storage.S3Storage    
 ```   
