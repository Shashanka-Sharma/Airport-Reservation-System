CREATE TABLE airline(
    name varchar(20),
    id   char(5)
    );
    
CREATE TABLE airplane(
    id  char(5), 
    airplane_id char(5),
    seats  int
    );

CREATE TABLE airport(
    id   char(5),
    name varchar(20),
    city varchar(20)
    );

CREATE TABLE ticket(
    ticket_id   char(5),
    id   char(5),
    base_price float
    );

CREATE TABLE departs(
    flight_num int,
    id char(5),
    date varchar(20),
    time varchar(20)
    );

CREATE TABLE arrives(
    flight_num int,
    id char(5),
    date varchar(20),
    time varchar(20)
    );

CREATE TABLE uses(
    flight_num int,
    airplane_id char(5)
    );

CREATE TABLE flight(
    flight_num int,
    ticket_id char(5),
    departure_date varchar(20),
    departure_time varchar(20),  
    status varchar(20) 
    );


CREATE TABLE name(
    username varchar(20),
    first_name varchar(20),
    last_name varchar(20)
    );

CREATE TABLE staff_phone_num(
    username varchar(20),
    phone_num varchar(20)
    );

CREATE TABLE phone_num(
    email varchar(20),
    phone_num varchar(20)
    );

CREATE TABLE customer(
    name varchar(20),
    email varchar(20),
    password varchar(32),
    passport_num varchar(20),
    passport_expire varchar(20),
    passport_country varchar(20),
    date_of_birth varchar(20)
    );

CREATE TABLE staff(
    username varchar(20),
    password varchar(20),
    id char(5),
    date_of_birth varchar(20)
    );

CREATE TABLE address(
    email varchar(20),
    building_num varchar(20),
    street varchar(20),
    city varchar(20),
    state varchar(20)
    );

CREATE TABLE purchase(
    email varchar(20),
    ticket_id char(5),
    date varchar(20),
    time varchar(20),
    sold_price float
    );

CREATE TABLE payment_info(
    card_type varchar(20),
    ticket_id char(5),
    number int,
    name varchar(20),
    expiration_date varchar(20)
    );

CREATE TABLE gives(
    email varchar(20),
    flight_num int,
    rating int
    );

CREATE TABLE comment(
    email varchar(20),
    comment varchar(50)
    );