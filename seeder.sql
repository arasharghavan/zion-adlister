INSERT INTO ads (user_id, title, description)
VALUES ((SELECT id FROM users WHERE username = 'Arash'), '2002 F150', 'Working truck AC works'),
      ((SELECT id FROM users WHERE username = 'Arash'), '2010 Honda Civic', 'must GO'),
      ((SELECT id FROM users WHERE username = 'Arash'), '1970 Chevy', 'Moms car has dent'),
      ((SELECT id FROM users WHERE username = 'Arash'), '1930 Benz', 'not working missing engine'),
      ((SELECT id FROM users WHERE username = 'Arash'), '2019 Tesla', 'brand new'),
      ((SELECT id FROM users WHERE username = 'Mindy'), '2013 VW Beetle', '2013 VW Beetle Volkswagen Beetle for sale, text only'),
      ((SELECT id FROM users WHERE username = 'Mindy'), '2015 VW Golf', 'Sustained some damage from meteorites'),
      ((SELECT id FROM users WHERE username = 'Mindy'), 'Fleetwood Hearse, Cadillac circa 1996', 'Hearse has been completely exorcized of spirits, ghosts, etc'),
      ((SELECT id FROM users WHERE username = 'Mindy'), 'Slightly Used Ambulance', 'Fully restored after 60 mile police chase'),
      ((SELECT id FROM users WHERE username = 'Mindy'), 'Work Van for Sale', 'Accident free, never used in shady endeavors'),
      ((SELECT id FROM users WHERE username = 'Carlo'), 'Oscar Meyer Weiner Mobile', 'A giant shaped hot dog mobile by oscar meyer'),
      ((SELECT id FROM users WHERE username = 'Carlo'), '2001 Subaru Outback', 'A new york subaru with a lot of stickers'),
      ((SELECT id FROM users WHERE username = 'Carlo'), '1986 Kawasaki Akira Motorcycle', 'A bright red Kawasaki used by Akira in the movie Akira'),
      ((SELECT id FROM users WHERE username = 'Carlo'), '1976 GM Electra Detective Edition', 'A olive colored huge sedan used by a famous bald detective'),
      ((SELECT id FROM users WHERE username = 'Carlo'), '1959 Chevy Apache', 'Restored, bright blue and ready for trouble');

INSERT INTO categories (ad_id, year, make, model, transmission, color, fuel, price, car_condition, mileage, engine_type)
VALUES (1, 2002, 'Ford',       'F-150',            'Automatic', 'Black',  'Unleaded',   3800, 'Working',       'V6',      170000),
      (2,  2010, 'Honda',      'Civic',            'Automatic', 'Black',  'Unleaded',   5800, 'Fair',          'Regular', 120000),
      (3,  1970, 'Chevy',      'Insight',          'Automatic', 'Silver', 'Unleaded',  30000, 'Good',          'Regular',  10000),
      (4,  1930, 'Benz',       'Car',              'N/A',       'Wood',   'Alcohol',  900000, 'Salvage',       'V8',           0),
      (5,  2019, 'Tesla',      'Tesla',            'Automatic', 'Gold',   'Electric', 120000, 'New',           'Others',     100),
      (6,  2013, 'Volkswagen', 'Beetle',           'manual',    'red',    'diesel',    12000, 'Like new',      'V4',       80000),
      (7,  2015, 'Volkswagen', 'Golf',             'automatic', 'blue',   'unleaded',  13000, 'Used but good', 'V6',       45000),
      (8,  1996, 'Cadillac',   'Fleetwood Hearse', 'automatic', 'black',  'unleaded',   6000, 'Worn',          'QQ',       36000),
      (9,  2005, 'Ford',       'E-450',            'automatic', 'white',  'diesel',    16000, 'Used',          'V5',       75000),
      (10, 1999, 'Ford',       'E-150',            'automatic', 'white',  'unleaded',   1000, 'Poor',          'VB',      202000);





INSERT INTO users (username, email, password)
VALUES
      ('Mindy', 'mjtillman@gmail.com', 'macaroni'),
      ('Carlo', 'carlo@carlo.com', 'olrac'),
      ('Arash', 'arash@arash.com', 'superarash');

