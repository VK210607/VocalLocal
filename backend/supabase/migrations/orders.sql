CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  product_id INT REFERENCES products(id),
  customer_id INT REFERENCES customers(id),
  vendor_id INT REFERENCES vendors(id),
  status TEXT DEFAULT 'pending',
  delivery_eta INTERVAL,
  created_at TIMESTAMP DEFAULT NOW()
);
