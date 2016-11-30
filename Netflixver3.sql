create table User (
	'user_id' primary key
	'first_name' varchar
	'last_name'	varchar
	'date_created' timestamp DEFAULT current_timestamp
	'email'	varchar
	'credit_card' integer
);

create table Profile (
	'profile_id' primary key
	'profile_name' varchar
	'user_id' foreign key
);

create table Queue (
	'queue_id'	primary key
	'profile_id' foreign key
	'video_id' foreign key
);

create table History (
	'history_id' primary key
	'profile_id' foreign key
	'video_id' foreign key
	'rating' integer
);

create table Video (
	'video_id'	primary key
	'video_title'	varchar
	'average_rating'	integer
	'genre'	varchar
	'year'	integer
);

