-- Drop the enum type if it exists
DROP TYPE IF EXISTS order_status_enum;

-- Create the enum type with valid order status values
CREATE TYPE order_status_enum AS ENUM (
  'Order Received',
  'Preparation Started',
  'Delivered',
  'On The Way'
);

-- Create the orders table with additional fields, all set to NOT NULL
CREATE TABLE orders (
    orderid SERIAL PRIMARY KEY,
    userid TEXT NOT NULL,
    ordered_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    delivered_at TIMESTAMPTZ,
    payment_status BOOLEAN DEFAULT FALSE,
    delivery_status order_status_enum DEFAULT 'Order Received',
    total_price DECIMAL(10, 2) NOT NULL,
    coupon_code TEXT,
    order_items JSONB[] NOT NULL,
    email TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    intentid TEXT,
    google_formatted_address TEXT,
    flat_number TEXT NOT NULL,
    landmark TEXT,
    street TEXT NOT NULL,
    state TEXT NOT NULL,
    pincode TEXT NOT NULL,
    delivery_phone_number TEXT NOT NULL,
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    first_name TEXT NOT NULL
);

-- Enable Row-Level Security (RLS) on the orders table
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;