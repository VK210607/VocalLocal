CREATE TABLE credits_transactions (
  id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(id),
  order_id INT REFERENCES orders(id),
  credits_earned INT DEFAULT 0,
  credits_redeemed INT DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW()
);