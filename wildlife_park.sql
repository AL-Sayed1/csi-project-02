-- Active: 1702726222078@@127.0.0.1@3306@wildlife_park

-- Create the database
CREATE DATABASE IF NOT EXISTS wildlife_park;
USE wildlife_park;

-- Create the Species table
CREATE TABLE Species (
    SpeciesID CHAR(2) PRIMARY KEY,
    SpeciesType VARCHAR(50),
    SpeciesGroup VARCHAR(50)
);

-- Create the Diet table
CREATE TABLE Diet (
    DietID CHAR(2) PRIMARY KEY,
    DietType VARCHAR(50),
    NoOfFeedsPerDay INT
);

-- Create the Keeper table
CREATE TABLE Keeper (
    KeeperID CHAR(2) PRIMARY KEY,
    KeeperName VARCHAR(50),
    KeeperDOB DATE,
    KeeperRank VARCHAR(20)
);

-- Create the Enclosure table
CREATE TABLE Enclosure (
    EnclosureID CHAR(2) PRIMARY KEY,
    EnclosureType VARCHAR(50),
    EnclosureLocation VARCHAR(50)
);

-- Create the Animal table
CREATE TABLE Animal (
    AnimalID CHAR(2) PRIMARY KEY,
    AnimalName VARCHAR(50),
    Gender CHAR(1),
    YearOfArrival INT,
    SpeciesID CHAR(2),
    DietID CHAR(2),
    NoOfFeedsPerDay INT,
    KeeperID CHAR(2),
    EnclosureID CHAR(2),
    FOREIGN KEY (SpeciesID) REFERENCES Species(SpeciesID),
    FOREIGN KEY (DietID) REFERENCES Diet(DietID),
    FOREIGN KEY (KeeperID) REFERENCES Keeper(KeeperID),
    FOREIGN KEY (EnclosureID) REFERENCES Enclosure(EnclosureID)
);

SELECT * FROM Animal WHERE `Animal ID` = 'A1';

-- Load data into Species table
LOAD DATA INFILE 'PROJECT-02.csv' INTO TABLE Species
FIELDS TERMINATED BY '\t'
IGNORE 1 LINES;

-- Load data into Diet table
LOAD DATA INFILE 'project-02.csv' INTO TABLE Diet
FIELDS TERMINATED BY '\t'
IGNORE 1 LINES;

-- Load data into Keeper table
LOAD DATA INFILE 'project-02.csv' INTO TABLE Keeper
FIELDS TERMINATED BY '\t'
IGNORE 1 LINES;

-- Load data into Enclosure table
LOAD DATA INFILE 'project-02.csv' INTO TABLE Enclosure
FIELDS TERMINATED BY '\t'
IGNORE 1 LINES;

-- Load data into Animal table
LOAD DATA INFILE 'project-02.csv' INTO TABLE Animal
FIELDS TERMINATED BY '\t'
IGNORE 1 LINES;
