CREATE TABLE `Netflix` (
  'id' integer PRIMARY KEY AUTOINCREMENT,
  `name` varchar(50) NOT NULL,
  'size' integer,
  'industry' varchar(50)
);

CREATE TABLE `Members` (
  `User_id` integer PRIMARY KEY AUTOINCREMENT,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  'dateCreated' timestamp DEFAULT current_timestamp );
  FOREIGN KEY (`industry`) REFERENCES
    `industry` (`id`) ON UPDATE CASCADE,
  UNIQUE KEY (`Members`)
);

CREATE TABLE `user` (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `person` integer,
  `password` varchar,
  FOREIGN KEY (`email`) REFERENCES
    `email` (`id`) ON UPDATE CASCADE
);

CREATE TABLE Original_Series (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `company` varchar,
  `req` varchar(64) 
  `title` varchar,
  `description` text DEFAULT NULL,
  `Shows` varchar(256) DEFAULT NULL,
  `Movies` varchar(256) DEFAULT NULL,
  INDEX (`title`),
  FOREIGN KEY (`Netflix`) REFERENCES
    UNIQUE KEY (`Original_Series`)
);

CREATE TABLE `Guide` (
  `id` integer AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(128) DEFAULT NULL,
  INDEX(`Original_Series`),
);

CREATE TABLE `Guide_Genre` (

  `score` integer,
  `Genre` varchar,
  FOREIGN KEY (`Genre`) REFERENCES
    `Genre` (`id`) ON UPDATE CASCADE
    INDEX(`Guide`),
);

CREATE TABLE `Movies_Genre` (
  `Movies` integer,
  `Genre` integer,
  INDEX(`movie_Id`),
);

CREATE TABLE `Shows_Genre` (
  `Shows` integer,
  `Genre` integer,
  FOREIGN KEY (`Genre`) REFERENCES
    `Genre` (`id`) ON UPDATE CASCADE,
    INDEX(`show_Id`),
);

create table allRatings (
'movie_Id' integer(20),
'show_Id' integer(20,)
'User_Id' integer(20) primary key,
'rating' integer(20),
timestamp decimal(60,4)
INDEX('Guide')
);

