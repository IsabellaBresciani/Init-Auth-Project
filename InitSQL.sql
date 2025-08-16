-- Creates the 'usuarios' table
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(60) NOT NULL UNIQUE,  -- 'NOT NULL' and 'UNIQUE' are crucial
    password VARCHAR(255) NOT NULL
);

