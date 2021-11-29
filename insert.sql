INSERT INTO airline values ("China Eastern", "10101");

INSERT INTO airport values ("10000", 
                    "JFK", 
                    "NYC");
INSERT INTO airport values ("10001", 
                    "PVG", 
                    "Shanghai");

INSERT INTO customer values ("Bob", 
                     "bob12@gmail.com", 
                     "Gorillanuggets12",
                     123456789,
                     "01/01/22",
                     "USA",
                     "01/01/01"
                     );
INSERT INTO address values ("bob12@gmail.com",
                   "521",
                   "Thomas St"
                    "Queens",
                    "New York"
                   );
INSERT INTO phone_num values ("bob12@gmail.com",
                      "9174811010"
                     );
INSERT INTO customer values ("Rob", 
                     "rob12@gmail.com", 
                     "Monkeysticks12",
                     123456781,
                     "02/02/22",
                     "China",
                     "02/02/01"
                     );
INSERT INTO address values ("rob12@gmail.com",
                   "222",
                   "Yuri St",
                    "Brooklyn",
                    "New York"
                   );
INSERT INTO phone_num values ("rob12@gmail.com",
                      "9113811210"
                     );                   
INSERT INTO customer values ("Sally", 
                     "sally12@gmail.com", 
                     "turtlefever12",
                     123456782,
                     "03/03/23",
                     "UK",
                     "03/03/01"
                     );
INSERT INTO address values ("sally12@gmail.com",
                   "133",
                   "Billy St",
                    "Manhattan",
                    "New York"
                   );
INSERT INTO phone_num values ("sally12@gmail.com",
                      "9124811510"
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
                     
INSERT INTO staff values ("alex@chinaeast.com",
                  "chickenflurry12",
                  "10101",
                  "04/04/01"
                  );
INSERT INTO staff_phone_num values ("alex@chinaeast.com",
                            "9174820019"
                           );
INSERT INTO name values ("alex@chinaeast.com",
                 "alex",
                 "fuego"
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
INSERT INTO purchase values ("bob12@gmail.com",
                     "10111",
                     "11/11/21",
                     "11:27",
                     221.00
                     );
INSERT INTO purchase values ("rob12@gmail.com",
                     "10112",
                     "01/11/21",
                     "13:27",
                     150.00
                     );
INSERT INTO purchase values ("sally12@gmail.com",
                     "10113",
                     "09/01/21",
                     "15:27",
                     600.00
                     );
INSERT INTO flight values (1203901,
                   "10111",
                   "12/11/21",
                   "12:00",
                   "On Time"
                   );
INSERT INTO flight values (1203211,
                   "10112",
                   "02/10/21",
                   "11:00",
                   "On Time"
                   );
INSERT INTO flight values (1200211,
                   "10113",
                   "10/10/21",
                   "13:00",
                   "Delayed"
                   );