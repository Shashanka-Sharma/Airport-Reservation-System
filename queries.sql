SELECT * FROM flight;

SELECT * FROM flight
WHERE flight.status = "Delayed";

SELECT name FROM customer NATURAL JOIN purchase;

SELECT airplane_id FROM airline NATURAL JOIN airplane;