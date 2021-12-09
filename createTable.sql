CREATE TABLE airline(
    name varchar(20),
    id   char(5)
    );
    
CREATE TABLE address(
    email varchar(20),
    building_num varchar(20),
    street varchar(20),
    city varchar(20),
    state varchar(20)
    );

    
CREATE TABLE airplane(
    id  char(5), 
    airplane_id char(5),
    seats  int(11)
    );

CREATE TABLE airport(
    airport_id   char(5),
    name varchar(20),
    city varchar(20)
    );
    
CREATE TABLE customer(
    name varchar(20),
    email varchar(20),
    password varchar(100),
    passport_num varchar(20),
    passport_expire varchar(20),
    passport_country varchar(20),
    date_of_birth date
    );
    
CREATE TABLE flight(
    flight_num int(11),
    ticket_id char(5),
    status varchar(20),
    trip_type varchar(20),
    depart_date date,
    depart_time time,  
    arrival_date date,
    arrival_time time,
    source_airport_id char(5),
    destination_airport_id char(5)
    );
    
CREATE TABLE gives(
    email varchar(20),
    flight_num int(11),
    rating int(11), 
    comment varchar(200)
    );
    
CREATE TABLE payment_info(
    card_type varchar(10),
    ticket_id char(5),
    number varchar(20),
    name varchar(20),
    expiration_date varchar(20)
    );

CREATE TABLE phone_num(
    email varchar(20),
    phone_num varchar(20)
    );

CREATE TABLE purchase(
    email varchar(20),
    ticket_id char(5),
    date date,
    time time,
    sold_price float
    );

CREATE TABLE staff(
    username varchar(20),
    password varchar(32),
    id char(5),
    date_of_birth date,
    first_name varchar(30),
    last_name varchar(30)
    );
    
CREATE TABLE staff_phone_num(
    username varchar(20),
    phone_num varchar(20)
    );

CREATE TABLE ticket(
    ticket_id   char(5),
    airline_id   char(5),
    base_price float
    );


CREATE TABLE uses(
    flight_num int(11),
    airplane_id char(5)
    );


