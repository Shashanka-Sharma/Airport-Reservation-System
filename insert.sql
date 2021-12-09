INSERT INTO airline values ("China Eastern", "10101");
INSERT INTO airline VALUES ("American Airlines" , "10100");

INSERT INTO address values ("bob12@gmail.com",
                   "521",
                   "Thomas St",
                    "Queens",
                    "New York"
                   );

INSERT INTO address values ("rob12@gmail.com",
                   "222",
                   "Yuri St",
                    "Brooklyn",
                    "New York"
                   );
INSERT INTO address values ("sally12@gmail.com",
                   "133",
                   "Billy St",
                    "Manhattan",
                    "New York"
                   );

INSERT INTO airplane values ("10101",
                     "53242",
                     112);
INSERT INTO airplane values ("10101",
                     "53123",
                     120);
INSERT INTO airplane values ("10101",
                     "51231",
                     125); 



INSERT INTO airport values ("10000", 
                    "JFK", 
                    "NYC");
INSERT INTO airport values ("10001", 
                    "PVG", 
                    "Shanghai");

INSERT INTO customer values ("Bob", 
                     "bob12@gmail.com", 
                     "Gorillanuggets12",
                     "123456789",
                     "01/01/22",
                     "USA",
                     "01/01/01"
                     );

INSERT INTO customer values ("Rob", 
                     "rob12@gmail.com", 
                     "Monkeysticks12",
                     "123456781",
                     "02/02/22",
                     "China",
                     "02/02/01"
                     );
                     
INSERT INTO customer values ("Sally", 
                     "sally12@gmail.com", 
                     "turtlefever12",
                     "123456782",
                     "03/03/23",
                     "UK",
                     "03/03/01"
                     );
		
INSERT INTO flight values (1203901,"10111","On Time","One Way","2022-01-01", "06:00","2022-01-02", "15:00", "10001","10000" );
INSERT INTO flight values (1203211,"10112","On Time","One Way","2022-02-01", "07:00","2022-02-02", "16:00","10001","10000" );
INSERT INTO flight values (1200211,"10113","Delayed","One Way", "2022-03-01", "08:00", "2022-03-02", "17:00","10001","10000");
INSERT INTO flight VALUES (1201111,"10114","Delayed","One Way", "2022-04-01", "09:00", "2022-04-02", "18:00","10001","10000");
INSERT INTO flight VALUES (1203231,"10115","On Time","One Way", "2022-05-01", "10:00", "2022-05-02", "19:00","10001","10000");
INSERT INTO flight VALUES (1208211,"10116","Delayed","One Way", "2022-06-01", "11:00", "2022-06-02", "20:00","10001","10000");
INSERT INTO flight VALUES (1206211,"10117","Delayed","One Way", "2022-07-01", "12:00" , "2022-07-02", "21:00","10001","10000");
INSERT INTO flight VALUES (1204444, "10118", "On Time", "Round Trip", "2022-08-01", "13:00", "2022-08-02", "14:00", "10000", "10000" ); 
                     
					
INSERT INTO payment_info VALUES ("credit", "10111", "1001100210031004", "Bob", "02/25");
INSERT INTO payment_info VALUES ("debit", "10112", "1002100310041005", "Rob", "03/25");
INSERT INTO payment_info VALUES ("credit", "10113", "1002100210041004", "Sally", "04/25");
INSERT INTO payment_info VALUES ("credit", "10112", "1001100210031004", "Bob", "02/25");

INSERT INTO phone_num values ("bob12@gmail.com",
                      "9174811010"
                     );


INSERT INTO phone_num values ("rob12@gmail.com",
                      "9113811210"
                     );                   


INSERT INTO phone_num values ("sally12@gmail.com",
                      "9124811510"
                     );



INSERT INTO purchase values ("bob12@gmail.com",
                     "10111",
                     "2021-12-12",
                     "11:27",
                     221.00
                     );
INSERT INTO purchase values ("rob12@gmail.com",
                     "10112",
                     "2021-12-13",
                     "13:27",
                     150.00
                     );
INSERT INTO purchase values ("sally12@gmail.com",
                     "10113",
                     "2021-12-15",
                     "15:27",
                     600.00
                     );
INSERT INTO purchase values ("bob12@gmail.com",
                     "10112",
                     "2021-12-13",
                     "12:27",
                     150.00
                     );
INSERT INTO staff values ("alex@chinaeast.com",
                  "chickenflurry12",
                  "10101",
                  "1997-12-12",
                  "Alex",
                  "Fuego"
                  );
                     
INSERT INTO staff_phone_num values ("alex@chinaeast.com",
                            "9174820019"
                           );
                 
INSERT INTO ticket values ("10111", 
                   "10101",
                   200.50            
                  );
INSERT INTO ticket values ("10112", 
                   "10101",
                   134.27
                  );
INSERT INTO ticket values ("10113", 
                   "10101",
                   573.10     
                  );
INSERT INTO ticket values ("10114", 
                   "10101",
                   100     
                  );
INSERT INTO ticket values ("10115", 
                   "10101",
                   167    
                  );
INSERT INTO ticket values ("10116", 
                   "10101",
                   302.21   
                  );
INSERT INTO ticket values ("10117", 
                   "10101",
                   235.12    
                  );
INSERT INTO ticket values ("10118", 
                   "10101",
                   100   
                  );


