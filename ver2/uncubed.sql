CREATE TABLE `companies` (
  `id` integer PRIMARY KEY AUTOINCREMENT,
  `name` varchar(50),
  `size` integer,  
  `industry` varchar(50)
);


CREATE TABLE `jobs` (
	'id' integer PRIMARY KEY AUTOINCREMENT, 
  'company' integer,
  'title' varchar(50),
  'description' text,
  'link' varchar(255) 
  );