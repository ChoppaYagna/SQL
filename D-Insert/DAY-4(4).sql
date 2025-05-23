CREATE TYPE status AS ENUM ('active', 'inactive', 'pending');

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER CHECK (age >= 18),
    status status
);
-- Do not modify above this line --


INSERT INTO users (id,name, age, status) VALUES
  (1, 'John Doe', 20, 'active'),
  (2, 'Jane Doe', 27, 'pending'),
  (3, 'John Smith', 28 , 'active'),
  (4, 'Jane Smith', 30, 'inactive');


-- Do not modify below this line --
SELECT * FROM users;
