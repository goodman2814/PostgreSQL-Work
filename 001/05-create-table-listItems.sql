CREATE TABLE listItems (
     liID SERIAL PRIMARY KEY,
     lID INT REFERENCES lists NOT NULL,
     iID INT references items NOT NULL,
     liDesired INT NOT NULL DEFAULT 1,
     liPurchased INT NOT NULL DEFAULT 0
);