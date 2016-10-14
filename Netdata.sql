CREATE TABLE `Netflix` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(128) NOT NULL,
  `url` VARCHAR(256) DEFAULT NULL,
  INDEX (`Netflix`)
);

CREATE TABLE `Members` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `fname` VARCHAR(128) NOT NULL,
  `lname` VARCHAR(128) NOT NULL,
  `email` VARCHAR(258) DEFAULT NULL,
  `company` INT DEFAULT NULL,
  `url_github` VARCHAR(256) NOT NULL,
  `url_linkedin` VARCHAR(256) NOT NULL,
  `url_twitter` VARCHAR(256) NOT NULL,
  `url_personal` VARCHAR(256) NOT NULL,
  FOREIGN KEY (`company`) REFERENCES
    `company` (`id`) ON UPDATE CASCADE,
  UNIQUE KEY (`Members`)
);

CREATE TABLE `user` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `person` INT NOT NULL,
  `password` VARCHAR(128) DEFAULT NULL,
  FOREIGN KEY (`person`) REFERENCES
    `person` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `Original_Series` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `company` INT,
  `req` VARCHAR(64) DEFAULT NULL,
  `title` VARCHAR(128) DEFAULT NULL,
  `desc` TEXT DEFAULT NULL,
  `Shows` VARCHAR(256) DEFAULT NULL,
  `Movies` VARCHAR(256) DEFAULT NULL,
  INDEX (`title`),
  FOREIGN KEY (`Netflix`) REFERENCES
    UNIQUE KEY (`Original_Series`)
);

CREATE TABLE `Guide` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `parent` INT DEFAULT NULL,
  `name` VARCHAR(128) DEFAULT NULL,
  INDEX(`name`),
  FOREIGN KEY (`parent`) REFERENCES
    `Guide` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `Guide_Genre` (
  `person` INT,
  `Genre` INT,
  FOREIGN KEY (`profile`) REFERENCES
    `person` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`Genre`) REFERENCES
    `Genre` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `Movies_Genre` (
  `Movies` INT,
  `Genre` INT,
  FOREIGN KEY (`Genre`) REFERENCES
    `Genre` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`Guide`) REFERENCES
    `Guide` (`id`) ON UPDATE CASCADE
);

CREATE TABLE `Shows_Genre` (
  `Shows` INT,
  `Genre` INT,
  FOREIGN KEY (`Genre`) REFERENCES
    `Genre` (`id`) ON UPDATE CASCADE,
  FOREIGN KEY (`Gudie`) REFERENCES
    `Gudie` (`id`) ON UPDATE CASCADE
);
