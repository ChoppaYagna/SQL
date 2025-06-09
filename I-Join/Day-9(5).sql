CREATE TABLE pokemon_types (
    id INTEGER PRIMARY KEY,
    name TEXT,
    weakness TEXT
);
CREATE TABLE pokemon (
    id INTEGER PRIMARY KEY,
    name TEXT,
    type_id INTEGER REFERENCES pokemon_types(id)
);
INSERT INTO pokemon_types (id, name, weakness) VALUES
(1, 'Fire', 'Water'),
(2, 'Water', 'Grass'),
(3, 'Grass', 'Fire'),
(4, 'Electric', 'Ground');
INSERT INTO pokemon (id, name, type_id) VALUES
(4, 'Charmander', 1),
(7, 'Squirtle', 2),
(3, 'Bulbasaur', 3);
SELECT h.name as human_name, p.name as pet_name
FROM humans h
LEFT JOIN pets p ON h.id = p.owner_id
ORDER BY h.name, p.name;