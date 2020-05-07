# streaming_data_postgresql

Objective:
Build a streaming data pipeline to capture the CDC data on a PostgreSQL database that ouputs to a S3 location.

Requirements:
The pipeline should be paramatrizable for other databases (running PostgreSQL) and other S3 locations. Easy to start and stop as needed. The solution should account for schema changes, likely requiring a JSON like output.

Data:
ID, First_name, Lastname, CC