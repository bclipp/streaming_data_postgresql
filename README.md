## Streaming CDC data

### Objective:  
Build a streaming data pipeline to capture the CDC data on a PostgreSQL database that ouputs to a S3 location.

### Requirements:
* The pipeline should be paramatrizable for other databases (running PostgreSQL) and other S3 locations.
* Easy to start and stop as needed.
* The solution should account for schema changes, likely requiring a JSON like output.
* deployment should be capable of moving to any cloud provider or even on premise.

### Data:
![schema](schema.png)

### POC Explanation

Kafka connect was used to meet the project requirements. There are a few options for this task like Kafka Connect, Logstash and AWS DMS. I chose Kafka connect becouse is it can scale, platform neutral, follows open standards and is extremly flexible.
