CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  vendor_id INT REFERENCES vendors(id),
  name TEXT NOT NULL,
  description TEXT,
  price NUMERIC(10,2),
  image_url TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);
