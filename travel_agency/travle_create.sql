use travel_agency;
DROP TABLE housing;
DROP TABLE food;
DROP TABLE tourist;
DROP TABLE tour;
DROP TABLE hotel;
DROP TABLE location;
DROP TABLE review;
DROP TABLE mountains;
DROP TABLE meal;
DROP TABLE sea;
DROP TABLE hotel_rating;
DROP TABLE tour_type;
DROP TABLE room;
DROP TABLE country;

CREATE TABLE country (
	country_id INT NOT NULL PRIMARY KEY,
	country_name VARCHAR(15) NOT NULL);

CREATE TABLE sea (
	sea_id INT NOT NULL PRIMARY KEY,
	sea_name VARCHAR(15) NOT NULL);

CREATE TABLE mountains (
	mountains_id INT NOT NULL PRIMARY KEY,
	mountains_name VARCHAR(30) NOT NULL);

CREATE TABLE tour_type (
	tourtype_id INT NOT NULL PRIMARY KEY,
	tourtype_name VARCHAR(30) NOT NULL);

CREATE TABLE hotel_rating (
	hotel_rating_id INT NOT NULL PRIMARY KEY,
	hotel_rating VARCHAR(15) NOT NULL);

CREATE TABLE room (
	room_id INT NOT NULL PRIMARY KEY,
	room_type VARCHAR(30) NOT NULL);

CREATE TABLE meal (
	meal_id INT NOT NULL PRIMARY KEY,
	meal_type VARCHAR(30) NOT NULL);

CREATE TABLE review (
	review_id INT NOT NULL PRIMARY KEY,
	rating INT NOT NULL,
	opinion VARCHAR(100) NOT NULL);
ALTER TABLE review ADD CHECK (rating BETWEEN 1 AND 10);

CREATE TABLE location (
	location_id INT NOT NULL PRIMARY KEY,
	location_name VARCHAR(30) NOT NULL,
	country_id INT NOT NULL,
	sea_id INT,
	mountains_id INT);

CREATE TABLE hotel (
	hotel_id INT NOT NULL PRIMARY KEY,
	hotel_name VARCHAR(30) NOT NULL,
	hotel_rating_id INT,
	location_id INT,
	phone_number VARCHAR(20) NOT NULL);

CREATE TABLE housing (
	hotel_id INT NOT NULL,
	room_id INT NOT NULL,
	PRIMARY KEY (hotel_id,room_id));

CREATE TABLE food (
	hotel_id INT NOT NULL,
	meal_id INT NOT NULL,
	PRIMARY KEY (hotel_id,meal_id));

CREATE TABLE tour (
	tour_id INT NOT NULL PRIMARY KEY,
	tour_name VARCHAR(50) NOT NULL,
	tourtype_id INT NOT NULL,
	hotel_id INT,
	room_id INT,
	meal_id INT,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	price INT NOT NULL);
    
ALTER TABLE tour ADD CHECK (end_date>"start_date");

CREATE TABLE tourist (
	tourist_id INT NOT NULL PRIMARY KEY,
	last_name VARCHAR(15) NOT NULL,
	first_name VARCHAR(15) NOT NULL,
	middle_name VARCHAR(15) NOT NULL,
	birthdate DATE NOT NULL,
	phone_number VARCHAR(20) NOT NULL,
	nation_id INT NOT NULL);
    
ALTER TABLE location ADD
	FOREIGN KEY (country_id) REFERENCES country (country_id)
	ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE location ADD    
	FOREIGN KEY (sea_id) REFERENCES sea (sea_id)
	ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE location ADD    
	FOREIGN KEY (mountains_id) REFERENCES mountains (mountains_id)
	ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE hotel ADD
	FOREIGN KEY (hotel_rating_id) REFERENCES hotel_rating (hotel_rating_id)
	ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE hotel ADD    
	FOREIGN KEY (location_id) REFERENCES location (location_id)
	ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE tour ADD
	FOREIGN KEY (tourtype_id) REFERENCES tour_type (tourtype_id)
	ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE tour ADD    
	FOREIGN KEY (hotel_id) REFERENCES hotel (hotel_id)
	ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE tour ADD    
	FOREIGN KEY (room_id) REFERENCES room (room_id)
	ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE tour ADD    
	FOREIGN KEY (meal_id) REFERENCES meal (meal_id)
	ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE tourist ADD 
	FOREIGN KEY (nation_id) REFERENCES country (country_id)
	ON DELETE NO ACTION ON UPDATE NO ACTION;


ALTER TABLE food ADD
	FOREIGN KEY (hotel_id) REFERENCES hotel (hotel_id)
	ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE food ADD    
	FOREIGN KEY (meal_id) REFERENCES meal (meal_id)
	ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE housing ADD
	FOREIGN KEY (hotel_id) REFERENCES hotel (hotel_id)
	ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE housing ADD    
	FOREIGN KEY (room_id) REFERENCES room (room_id)
	ON DELETE CASCADE ON UPDATE CASCADE;

