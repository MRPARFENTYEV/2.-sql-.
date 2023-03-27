CREATE DATABASE music_service;


CREATE TABLE collection (
id SERIAL PRIMARY KEY,
name VARCHAR(60),
release_year DATE
);


create table track (
id SERIAL PRIMARY KEY,
name VARCHAR(60) not NULL,
lenght TIME not null 
);


CREATE TABLE track_and_collection( 
id SERIAL PRIMARY KEY,
track_id INTEGER REFERENCES track(id),
collection_id INTEGER REFERENCES collection(id)
);


CREATE TABLE album(
id SERIAL PRIMARY KEY,
name VARCHAR(60) not NULL,
release_year DATE not null
);
-alter table track add album_id BIGINT references album (id);


create table  singer(
id Serial PRIMARY KEY,
name VARCHAR(60) not null,
nickname VARCHAR(60) not null
);

CREATE TABLE singer_and_album(
id SERIAL PRIMARY KEY,
singer_id INTEGER REFERENCES singer(id),
album_id INTEGER REFERENCES album(id)
);


CREATE TABLE genre(
id Serial PRIMARY KEY,
NAME VARCHAR(60) NOT NULL
);


CREATE TABLE singers_and_genre(
id SERIAL PRIMARY KEY,
singer_id INTEGER REFERENCES singer(id),
genre_id INTEGER REFERENCES genre(id)
);









