INSERT INTO ads (user_id, title, description)
VALUES ((SELECT id FROM users WHERE username = 'Arash'), '2002 F150', 'Working truck AC works'),
       ((SELECT id FROM users WHERE username = 'Arash'), '2010 Honda Civic', 'must GO'),
       ((SELECT id FROM users WHERE username = 'Arash'), '1970 Chevy', 'Moms car has dent'),
       ((SELECT id FROM users WHERE username = 'Arash'), '1930 Benz', 'not working missing engine'),
       ((SELECT id FROM users WHERE username = 'Arash'), '2019 Tesla', 'brand new'),
       ((SELECT id FROM users WHERE username = 'Mindy'), '2013 VW Beetle', 'Volkswagen Beetle for sale, text only'),
       ((SELECT id FROM users WHERE username = 'Mindy'), '2015 VW Golf', 'Sustained some damage from meteorites'),
       ((SELECT id FROM users WHERE username = 'Mindy'), 'Fleetwood Hearse, Cadillac circa 1996',
        'Hearse has been completely exorcized of spirits, ghosts, etc'),
       ((SELECT id FROM users WHERE username = 'Mindy'), 'Slightly Used Ambulance',
        'Fully restored after 60 mile police chase'),
       ((SELECT id FROM users WHERE username = 'Mindy'), 'Work Van for Sale',
        'Accident free, never used in shady endeavors'),
       ((SELECT id FROM users WHERE username = 'Carlo'), 'Oscar Meyer Weiner Mobile',
        'A giant shaped hot dog mobile by oscar meyer'),
       ((SELECT id FROM users WHERE username = 'Carlo'), '2001 Subaru Outback',
        'A new york subaru with a lot of stickers'),
       ((SELECT id FROM users WHERE username = 'Carlo'), '1986 Kawasaki Akira Motorcycle',
        'A bright red Kawasaki used by Akira in the movie Akira'),
       ((SELECT id FROM users WHERE username = 'Carlo'), '1976 GM Electra Detective Edition',
        'A olive colored huge sedan used by a famous bald detective'),
       ((SELECT id FROM users WHERE username = 'Carlo'), '1959 Chevy Apache',
        'Restored, bright blue and ready for trouble');


INSERT INTO categories (ad_id, year, make, model, transmission, color, fuel, price, car_condition, mileage, engine_type)
VALUES (6,2013, 'Volkswagen', 'Beetle', 'manual', 'red', 'diesel',  12000, 'Like new', 80000,'v8' ),
       (7,2015, 'Volkswagen', 'Golf', 'automatic', 'blue', 'unleaded', 13000, 'Used but good', 45000,'v12'),
       (8,1996, 'Cadillac', 'Fleetwood Hearse', 'automatic', 'black', 'unleaded', 6000, 'Worn', 36000, 'v6');


INSERT INTO users (username, email, password)
VALUES
           ('Mindy','mjtillman@gmail.com', 'macaroni'),
           ('Carlo', 'carlo@carlo.com', 'olrac'),
           ('Arash', 'arash@arash.com', 'superarash');

