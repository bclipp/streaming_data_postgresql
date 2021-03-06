## Streaming CDC data

### Objective:  
Build a streaming data pipeline to capture the CDC data on a PostgreSQL database that outputs to a S3 location.

### Requirements:
* The pipeline should be parametrizable for other databases (running PostgreSQL) and other S3 locations.
* Easy to start and stop as needed.
* The solution should account for schema changes, likely requiring a JSON like output.
* deployment should be capable of moving to any cloud provider or even on-premise.

### Data:
![schema](schema.png)

### POC Explanation:

There are a few options for this task like
  * Kafka Connect
  * Logstash
  * AWS DMS
  * Spark Streaming

Major Benifits of Kafka Connect
* Source and Sink Connector ecosystem is very large, so no code required you can connect just about anything to anything.  
* Scales as needed with little effort   
* Platform neutral  
* For this project, the output can be in a JSON, Avro, or Parquet format which can handle schema changes.  
* The Kafka ecosystem has a schema registry, which will help significantly with changing schemas.  

output will be in a json:
```
{"id":2,"first_name":"2","last_name":"2","cc":null,"last_altered":1590426878772}
```

Using other databases:
* To use another database, simply add the jar to the kafka-connect-jdbc folder.
* You can also start with CLASSPATH set to the absolute location of the jar (not the folder).
* If you are using a cluster, each node needs to be set up with the jar.


### Docker

For this POC I used Docker and an easy to use docker image [fast-data-dev](https://hub.docker.com/r/landoop/fast-data-dev/) that comes with a GUI.
This docker image isn't recommended for a production system.
