create table allRatings (
movieId int(20),
showId int(20),
userId int(20) primary key,
rating int(20),
score int(20),
timestamp decimal(60,4));

create table userdata (
id int(30) primary key,
fname varchar(250) NOT NULL,
lname varchar(250) NOT NULL,
email varchar(250) NOT NULL,
dateCreated timestamp DEFAULT current_timestamp );
average decimal(50,5),
number int(20));

create table moviedata ( 
id int(30) primary key,
average decimal(50,5),
title varchar,
description text DEFAULT NULL,
number int(20));

create index movie on allRatings(movieId);

create index show on allRatings(showId);

create index user on allRatings(userId);