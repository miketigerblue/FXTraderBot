CREATE TABLE forex_data (
    id SERIAL PRIMARY KEY,
    currency_pair VARCHAR(10) NOT NULL,
    rate DECIMAL(18, 8),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
