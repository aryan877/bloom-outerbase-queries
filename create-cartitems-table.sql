-- Create the table
CREATE TABLE cartitems (
    cartitemid SERIAL PRIMARY KEY,
    userid TEXT NOT NULL,
    itemid INT NOT NULL,
    quantity INT NOT NULL
);

-- Drop the constraint if it exists
ALTER TABLE cartitems
DROP CONSTRAINT IF EXISTS unique_user_item;

-- Create the constraint
ALTER TABLE cartitems
ADD CONSTRAINT unique_user_item UNIQUE (userid, itemid);

-- Enable Row-Level Security (RLS) on the cartitems table
ALTER TABLE cartitems ENABLE ROW LEVEL SECURITY;
