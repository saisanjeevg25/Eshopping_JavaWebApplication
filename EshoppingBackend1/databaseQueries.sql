CREATE TABLE category (

	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
     
	CONSTRAINT pk_category_id PRIMARY KEY (id)
);

CREATE TABLE user (

	username VARCHAR(15),
	password VARCHAR(10),
	 name VARCHAR(50),
	email VARCHAR(50),
    phone VARCHAR(50),
  	role VARCHAR(50),
	is_active BOOLEAN,
     
	CONSTRAINT pk_user_username PRIMARY KEY (username)
);