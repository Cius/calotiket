USE calotiket
;

SET FOREIGN_KEY_CHECKS=0;




CREATE TABLE airports
(
	airport_code CHAR(3) NOT NULL,
	name VARCHAR(255) NOT NULL,
	location VARCHAR(255) NOT NULL,
	PRIMARY KEY (airport_code)

) 
;


CREATE TABLE booking_informations
(
	user_id INTEGER NOT NULL,
	conSalutation VARCHAR(5) NOT NULL,
	conFirstname VARCHAR(50) NOT NULL,
	conLastname VARCHAR(50) NOT NULL,
	firstnamea1 VARCHAR(50) NOT NULL,
	lastnamea1 VARCHAR(50) NOT NULL,
	ida1 VARCHAR(50) NOT NULL,
	titlea1 VARCHAR(5) NOT NULL,
	conOtherPhone VARCHAR(20) NOT NULL,
	passportnoa1 VARCHAR(50) NOT NULL,
	passportExpiryDatea1 DATE NOT NULL,
	adult_birth_date1 DATE NOT NULL,
	passportissuinga1 VARCHAR(50) NOT NULL,
	passportnationalitya1 VARCHAR(50) NOT NULL,
	PRIMARY KEY (user_id),
	UNIQUE UQ_booking_informations_ida1(ida1),
	UNIQUE UQ_booking_informations_passportnoa1(passportnoa1)

) 
;


CREATE TABLE ticket_search_criterias
(
	ticket_search_criteria_id INTEGER NOT NULL,
	user_id INTEGER NOT NULL,
	departure_airport_code CHAR(3) NOT NULL,
	arrival_airport_code CHAR(3) NOT NULL,
	departure_date_from DATE NOT NULL,
	departure_date_to DATE NOT NULL,
	date_search_from DATE NOT NULL,
	date_search_to DATE NOT NULL,
	maximum_price NUMERIC(18,2) NOT NULL,
	status VARCHAR(16) NOT NULL,
	created_date DATETIME NOT NULL,
	updated_date DATETIME NOT NULL,
	delete_flag TINYINT NOT NULL,
	PRIMARY KEY (ticket_search_criteria_id)

) 
;


CREATE TABLE ticket_search_results
(
	ticket_search_result_id INTEGER NOT NULL,
	ticket_search_criteria_id INTEGER NOT NULL,
	departure_date DATE NOT NULL,
	flight_id BIGINT NOT NULL,
	airlines_name VARCHAR(255) NOT NULL,
	flight_number VARCHAR(32) NOT NULL,
	price NUMERIC(18,2) NOT NULL,
	departure_time DATETIME NOT NULL,
	arrival_time DATETIME NOT NULL,
	stop VARCHAR(128) NOT NULL,
	long_via VARCHAR(255) NOT NULL,
	booked TINYINT NOT NULL,
	PRIMARY KEY (ticket_search_result_id)

) 
;


CREATE TABLE users
(
	user_id INTEGER NOT NULL,
	username VARCHAR(32) NOT NULL,
	password VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	handphone_number VARCHAR(32) NOT NULL,
	created_date DATETIME NOT NULL,
	updated_date DATETIME NOT NULL,
	deleted_flag TINYINT NOT NULL,
	PRIMARY KEY (user_id),
	UNIQUE UQ_users_email(email),
	UNIQUE UQ_users_handphone_number(handphone_number),
	UNIQUE UQ_users_username(username)

) 
;



SET FOREIGN_KEY_CHECKS=1;
