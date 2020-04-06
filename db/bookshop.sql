DROP TABLE books;
DROP TABLE publishers;

CREATE TABLE publishers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  active BOOLEAN
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  publisher_id INT REFERENCES publishers(id),
  cost_price FLOAT,
  selling_price FLOAT,
  stock_level INT
);
