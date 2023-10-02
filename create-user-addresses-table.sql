CREATE TABLE addresses (
    addressid SERIAL PRIMARY KEY,
    userid TEXT NOT NULL,
    street TEXT NOT NULL,
    google_formatted_address TEXT,
    flat_number TEXT NOT NULL,
    landmark TEXT,
    state TEXT NOT NULL,
    pincode TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    longitude DECIMAL(10, 6) NOT NULL, -- Precision of 10 with 6 decimal places for longitude
    latitude DECIMAL(10, 6) NOT NULL,  -- Precision of 10 with 6 decimal places for latitude
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Enable Row-Level Security (RLS) on the addresses table
ALTER TABLE addresses ENABLE ROW LEVEL SECURITY;
