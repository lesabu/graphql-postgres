DROP TABLE IF EXISTS emails;
DROP TABLE IF EXISTS people;

CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(40) NOT NULL,
    lastname VARCHAR(40) NOT NULL
);

CREATE TABLE emails (
    id SERIAL PRIMARY KEY,
    email VARCHAR(256) NOT NULL,
    person INT REFERENCES people (id),
    "primary" BOOLEAN DEFAULT false
);

-- INSERT strings MUST have single quotes

INSERT INTO people (firstname, lastname) VALUES (
    'Leslie', 'Büttel'
);

INSERT INTO people (firstname, lastname) VALUES (
    'Sandra', 'Bullock'
);

INSERT INTO emails (email, person) VALUES (
    'leslie@email.test', 1
);

INSERT INTO emails (email, person) VALUES (
    'sandy@email.test', 2
);