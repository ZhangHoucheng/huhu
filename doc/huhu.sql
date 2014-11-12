CREATE DATABASE huhu
  WITH OWNER = postgres
       ENCODING = 'UTF8'

CREATE TABLE "users"
(
  user_id serial NOT NULL,
  name varchar(30),
  email varchar(60) NOT NULL,
  password varchar(64),
  last_time timestamp,
  created_at timestamp,
  last_ip varchar(15),
  status integer NOT NULL DEFAULT 0,
  PRIMARY KEY (user_id)
);

CREATE TABLE tag
(
  id serial NOT NULL,
  name varchar(255) NOT NULL,
  created_at timestamp NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE image
(
  id serial NOT NULL,
  name varchar(60) NOT NULL,
  url varchar(255) NOT NULL,
  created_at timestamp NOT NULL,
  viewed int NOT NULL,
  liked int NOT NULL,
  description text,
  width int NOT NULL,
  height int NOT NULL,
  tag varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE favorites
(
  id serial NOT NULL,
  user_id varchar(20),
  image_id varchar(20) NOT NULL,
  created_at timestamp NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE comments
(
  id integer NOT NULL ,
  user_id varchar(20) NOT NULL,
  image_id varchar(20) NOT NULL,
  content text NOT NULL,
  created_at timestamp NOT NULL,
  reply_id varchar(20),
  PRIMARY KEY (id)
);