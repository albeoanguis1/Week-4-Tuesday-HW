--DDL data definition LANGUAGE
CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(10),
    membership BOOLEAN
);

CREATE TABLE concessions(
    conession_id INTEGER PRIMARY KEY,
    product_name VARCHAR(50),
    price NUMERIC(8,2)
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    staff_id INTEGER,
    FOREIGN KEY(movie_name) REFERENCES movies(movie_name),
    start_time INTEGER,
    seat_id INTEGER,
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50) PRIMARY KEY,
    run_time INTEGER,
    rating VARCHAR(5),
    genre VARCHAR(50),
    movie_desc VARCHAR(300)
)

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    order_total INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
    FOREIGN KEY(concession_id) REFERENCES concessions(concession_id)
)