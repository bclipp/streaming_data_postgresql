CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name character varying(255),
    last_name  character varying(255),
    cc  character varying(255),
    last_altered TIMESTAMP NOT NULL
);

COPY customers(id,first_name,last_name,cc)
FROM '/tmp/customers.csv' DELIMITER ',' CSV HEADER;
