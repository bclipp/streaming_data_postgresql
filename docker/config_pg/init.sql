CREATE TABLE customers (
    id integer PRIMARY KEY,
    first_name character varying(255),
    last_name  character varying(255),
    cc  character varying(255),
);

COPY customers(id,first_name,last_name,cc)
FROM 'customers.csv' DELIMITER ',' CSV HEADER;