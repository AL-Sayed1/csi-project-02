-- Active: 1702720934124@@127.0.0.1@3306@wildlife_park
-- Active: 1702726222078@@127.0.0.1@3306@wildlife_park

-- Create the database
CREATE DATABASE IF NOT EXISTS wildlife_park;
USE wildlife_park;

-- Create the Species table
CREATE TABLE Species (
    SpeciesID CHAR(3) PRIMARY KEY,
    SpeciesType VARCHAR(50),
    SpeciesGroup VARCHAR(50)
);

-- Create the Diet table
CREATE TABLE Diet (
    DietID CHAR(3) PRIMARY KEY,
    DietType VARCHAR(50),
    NoOfFeedsPerDay INT
);

-- Create the Keeper table
CREATE TABLE Keeper (
    KeeperID CHAR(3) PRIMARY KEY,
    KeeperName VARCHAR(50),
    KeeperDOB DATE,
    KeeperRank VARCHAR(20)
);

-- Create the Enclosure table
CREATE TABLE Enclosure (
    EnclosureID CHAR(3) PRIMARY KEY,
    EnclosureType VARCHAR(50),
    EnclosureLocation VARCHAR(50)
);

-- Create the Animal table
CREATE TABLE Animal (
    AnimalID CHAR(3) PRIMARY KEY,
    AnimalName VARCHAR(50),
    Gender CHAR(1),
    YearOfArrival INT,
    SpeciesID CHAR(3),
    DietID CHAR(2),
    NoOfFeedsPerDay INT,
    KeeperID CHAR(2),
    EnclosureID CHAR(2),
    FOREIGN KEY (SpeciesID) REFERENCES Species(SpeciesID),
    FOREIGN KEY (DietID) REFERENCES Diet(DietID),
    FOREIGN KEY (KeeperID) REFERENCES Keeper(KeeperID),
    FOREIGN KEY (EnclosureID) REFERENCES Enclosure(EnclosureID)
);

-- Insert data into the Species table
INSERT INTO Species (SpeciesID, SpeciesType, SpeciesGroup) VALUES
('S3', 'Gorilla', 'Mammal'),
('S4', 'Orang-utan', 'Mammal'),
('S6', 'Rhinoceros', 'Mammal'),
('S7', 'Crocodile', 'Reptile'),
('S8', 'Elephant', 'Mammal'),
('S9', 'Armadillo', 'Mammal'),
('S10', 'Giant Tortoise', 'Reptile'),
('S11', 'Lion', 'Mammal'),
('S12', 'Raccoon', 'Mammal'),
('S13', 'Leopard', 'Mammal'),
('S14', 'Chinchilla', 'Mammal'),
('S15', 'Tamarin', 'Mammal'),
('S16', 'Penguin', 'Bird'),
('S17', 'Sea Turtle', 'Reptile'),
('S18', 'Sloth', 'Mammal'),
('S19', 'Kakapo', 'Bird'),
('S20', 'Hippopotamus', 'Mammal');


-- Populating the Diet Table
INSERT INTO Diet (DietID, DietType, NoOfFeedsPerDay) VALUES
('D1', 'Omnivore', 6),
('D2', 'Herbivore', 6),
('D3', 'Carnivore', 4);

-- Populating the Keeper Table
INSERT INTO Keeper (KeeperID, KeeperName, KeeperDOB, KeeperRank) VALUES
('K1', 'Dave', '1964-06-18', 'Senior'),
('K2', 'Kayden', '1985-01-21', 'Junior'),
('K3', 'Suki', '1998-09-08', 'Standard'),
('K4', 'Temi', '2000-04-16', 'Senior');

-- Populating the Enclosure Table
INSERT INTO Enclosure (EnclosureID, EnclosureType, EnclosureLocation) VALUES
('E1', 'Moat', 'North'),
('E2', 'Glass', 'North'),
('E3', 'Fence', 'East'),
('E4', 'Walled', 'South'),
('E5', 'Pen', 'South'),
('E6', 'Hill', 'West');

-- Populating the Animal Table
INSERT INTO Animal (AnimalID, AnimalName, Gender, YearOfArrival, SpeciesID, DietID, NoOfFeedsPerDay, KeeperID, EnclosureID) VALUES
('A3', 'Geoffrey', 'M', 2018, 'S3', 'D1', 6, 'K1', 'E2'),
('A4', 'Oliver', 'M', 2011, 'S4', 'D1', 6, 'K1', 'E1'),
('A6', 'Roger', 'M', 2000, 'S6', 'D2', 6, 'K2', 'E3'),
('A7', 'Clive', 'M', 2013, 'S7', 'D3', 4, 'K2', 'E3'),
('A8', 'Eddie', 'M', 2016, 'S8', 'D2', 6, 'K2', 'E4'),
('A9', 'Arnie', 'M', 2012, 'S9', 'D1', 1, 'K2', 'E5'),
('A10', 'Gavin', 'M', 2015, 'S10', 'D2', 1, 'K2', 'E5'),
('A11', 'Lucy', 'F', 2011, 'S11', 'D3', 3, 'K3', 'E4'),
('A12', 'Robbie', 'M', 2017, 'S12', 'D1', 2, 'K3', 'E5'),
('A13', 'Laura', 'F', 2018, 'S13', 'D3', 4, 'K3', 'E3'),
('A14', 'Casey', 'F', 2013, 'S14', 'D2', 2, 'K3', 'E5'),
('A15', 'Trevor', 'M', 2000, 'S15', 'D1', 4, 'K3', 'E3'),
('A16', 'Polly', 'F', 2017, 'S16', 'D1', 5, 'K4', 'E2'),
('A17', 'Sarah', 'F', 2015, 'S17', 'D1', 3, 'K4', 'E2'),
('A18', 'Stan', 'M', 2018, 'S18', 'D1', 1, 'K4', 'E3'),
('A19', 'Kara', 'F', 2001, 'S19', 'D2', 3, 'K4', 'E4'),
('A20', 'Henry', 'M', 2003, 'S20', 'D2', 6, 'K4', 'E3'),
('A22', 'Eliza', 'F', 2003, 'S8', 'D2', 6, 'K2', 'E4'),
('A23', 'George', 'M', 2000, 'S3', 'D1', 6, 'K1', 'E2'),
('A24', 'Carlos', 'M', 2017, 'S7', 'D3', 4, 'K2', 'E3'),
('A25', 'Lenie', 'F', 2015, 'S11', 'D3', 3, 'K3', 'E4'),
('A26', 'Roberta', 'F', 2018, 'S12', 'D1', 2, 'K3', 'E5'),
('A27', 'Peter', 'M', 2001, 'S16', 'D1', 5, 'K4', 'E2'),
('A28', 'Percy', 'M', 2003, 'S16', 'D1', 5, 'K4', 'E2'),
('A29', 'Petal', 'F', 2003, 'S16', 'D1', 5, 'K4', 'E2'),
('A30', 'Sammie', 'F', 2013, 'S18', 'D1', 1, 'K4', 'E3'),
('A31', 'Lionel', 'M', 2016, 'S11', 'D3', 3, 'K3', 'E4'),
('A32', 'Gertrude', 'F', 2012, 'S3', 'D1', 6, 'K1', 'E2'),
('A33', 'Olive', 'F', 2015, 'S4', 'D1', 6, 'K1', 'E1'),
('A34', 'Ossie', 'M', 2011, 'S4', 'D1', 6, 'K1', 'E1'),
('A35', 'Lena', 'F', 2017, 'S13', 'D3', 4, 'K3', 'E3'),
('A36', 'Rommy', 'F', 2018, 'S6', 'D2', 6, 'K2', 'E3'),
('A37', 'Tulisa', 'F', 2013, 'S15', 'D1', 4, 'K3', 'E3'),
('A38', 'Chrissie', 'F', 2000, 'S7', 'D3', 4, 'K2', 'E3'),
('A39', 'Elsie', 'F', 2017, 'S8', 'D2', 6, 'K2', 'E4'),
('A40', 'Colin', 'M', 2015, 'S7', 'D3', 4, 'K2', 'E3'),
('A41', 'Hattie', 'F', 2018, 'S10', 'D2', 1, 'K4', 'E3'),
('A42', 'Robbie', 'M', 2017, 'S6', 'D2', 6, 'K2', 'E3'),
('A43', 'Luna', 'F', 2018, 'S11', 'D3', 3, 'K3', 'E4'),
('A44', 'Rebbi', 'M', 2013, 'S12', 'D1', 2, 'K3', 'E5'),
('A45', 'Penni', 'F', 2000, 'S16', 'D1', 5, 'K4', 'E2'),
('A46', 'Emmie', 'F', 2000, 'S8', 'D2', 6, 'K2', 'E4'),
('A47', 'Lope', 'M', 2017, 'S13', 'D3', 4, 'K3', 'E3'),
('A48', 'Cressida', 'F', 2015, 'S14', 'D2', 2, 'K3', 'E5'),
('A49', 'Tommy', 'M', 2018, 'S15', 'D1', 4, 'K3', 'E3'),
('A50', 'Gareth', 'M', 2017, 'S3', 'D1', 6, 'K1', 'E2');
