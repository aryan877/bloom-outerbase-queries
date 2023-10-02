CREATE TABLE fooditems (
    itemid SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC,
    categoryid INT NOT NULL REFERENCES foodcategories(categoryid),
    slug TEXT,
    image TEXT,
    description TEXT
);

 -- Enable Row-Level Security (RLS) on the fooditems table
ALTER TABLE fooditems ENABLE ROW LEVEL SECURITY;