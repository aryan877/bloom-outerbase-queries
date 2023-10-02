CREATE TABLE foodcategories (
    categoryid SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    image TEXT,
    slug TEXT NOT NULL,
    description TEXT
);
 
 -- Enable Row-Level Security (RLS) on the foodcategories table
ALTER TABLE foodcategories ENABLE ROW LEVEL SECURITY;