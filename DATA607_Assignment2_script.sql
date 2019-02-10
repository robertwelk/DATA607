# DATA607 - Assignment 2 
#Script to create relational database for movie reviews
#2/10/19
#Rob Welk
#MySQL version 8.0.12
 
CREATE SCHEMA `movie ratings` ;

DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS reviewers;

#This is the main table that holds ratings for each reviewer for each movie
#ReviewerID and MovieID are foreign keys
CREATE TABLE `movie ratings`.`ratings` (
  `RatingID` INT NOT NULL AUTO_INCREMENT,
  `ReviewerID` INT NULL,
  `MovieID` INT NULL,
  `Rating` INT NULL,
  PRIMARY KEY (`RatingID`));
  
#This table holds a unique entry for each title
#primary key MovieID relates to MovieID in the ratings table
CREATE TABLE `movie ratings`.`movies` (
  `MovieID` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(45) NULL,
  `Genre` VARCHAR(45) NULL,
  PRIMARY KEY (`movieID`));
  
#This table holds a unique entry for each reviewer
#primary key ReviewerID relates to ReviewerID in the ratings table
CREATE TABLE `movie ratings`.`reviewers` (
  `ReviewerID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Relationship` VARCHAR(45) NULL,
  PRIMARY KEY (`reviewerID`));

INSERT INTO `movie ratings`.`movies`
(`Title`, `Genre`)
VALUES
("Fyre", "Documentary"),
("The Handmaid's Tale", "TV Series"),
("Bohemian Rhapsody", "Drama"),
("Bird Box","Drama"),
("Fyre Fraud", "Documentary"),
("I, Tonya", "Comedy");

INSERT INTO `movie ratings`.`reviewers`
(`Name`, `Relationship`)
VALUES
("Jenn","Friend"),
("Matt", "Friend"),
("Maria", "Family"),
("Anthony", "Friend"),
("John","Family"),
("Joan","Family");

INSERT INTO `movie ratings`.`ratings`
(`ReviewerID`, `MovieID`, `Rating`)
VALUES
(1,1,3),
(1,2,5),
(1,3,4),
(1,4,3),
(1,5,5),
(1,6,2),
(2,1,5),
(2,2,4),
(2,3,3),
(2,4,4),
(2,5,1),
(2,6,5),
(3,1,4),
(3,2,4),
(3,3,5),
(3,4,3),
(3,5,5),
(3,6,1),
(4,1,4),
(4,2,3),
(4,3,4),
(4,4,5),
(4,5,1),
(4,6,5),
(5,1,2),
(5,2,4),
(5,3,3),
(5,4,5),
(5,5,3),
(5,6,3),
(6,1,4),
(6,2,4),
(6,3,3),
(6,4,3),
(6,5,3),
(6,6,2);

## The following lines were used to grant access priveledges to user DATA606
#CREATE USER 'DATA606'@'localhost' IDENTIFIED BY 'abc123';
#GRANT ALL PRIVILEGES ON `movie ratings`.* TO 'DATA606'@'localhost';



