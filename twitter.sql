CREATE TABLE User {
	'user_id' integer NOT NULL,
	'name' varchar(128) NOT NULL,
	'username' varchar(128) NOT NULL,
	'email' varchar(256) NOT NULL,
	'date_joined' date NOT NULL,
	'description' text,
	'Location' varchar(128),

	PRIMARY KEY (Id)
};

CREATE TABLE Tweets {
	'tweets_id' integer NOT NULL,
	'post_content' text NOT NULL,
	'date_posted' date NOT NULL,
	'location' varchar(128),

	'Reply' boolean,	# If this tweet is in reply to another tweet
	'Tweets_other_id' integer,	# Id of the tweet this is in reply to

	'user_id' integer NOT NULL,
	PRIMARY KEY ('tweets_id'),
	FOREIGN KEY ('user_id') REFERENCES user (Primary key 'Id'),
	FOREIGN KEY ('tweets_other_id') REFERENCES user (Primary key 'Id')
};
