use maclister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL UNIQUE,
    email VARCHAR(240) NOT NULL UNIQUE ,
    password VARCHAR(255) NOT NULL ,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS categories(
                                         year YEAR NOT NULL,
                                         make VARCHAR(255) NOT NULL,
                                         model VARCHAR(255) NOT NULL,
                                         transmission VARCHAR(255) NOT NULL,
                                         color VARCHAR(255) NOT NULL,
                                         fuel VARCHAR(255) NOT NULL,
                                         price INT NOT NULL,
                                         car_condition VARCHAR(255) NOT NULL,
                                         mileage INT NOT NULL,
                                         engine_type VARCHAR(255),
                                         ad_id INT UNSIGNED NOT NULL,
                                         FOREIGN KEY (ad_id) REFERENCES ads(id)
);

#
# insert  into categories (ad_id, year, make, model, transmission, color, fuel, price, car_condition, mileage, engine_type) values
#
# (2002,'Ford150','Insight','Black','Automatic','Unleaded',3800,'Working','V6',170000),
# (2010,'Honda','Insight','Black','Automatic','Unleaded',5800,'Fair','Regular',120000),
# (1970,'Chevy','Insight','Silver','Automatic','Unleaded',30000,'Good','Regular',10000),
# (1930,'Benz','Insight','Wood','N/A','Alcohol',900000,'Salvage','V8',0),
# (2019,'Tesla','Insight','Gold','Automatic','Electric',120000,'New','Others',100);



# INSERT INTO ads (user_id, title, description)
# VALUES ((SELECT id FROM users WHERE username = 'arash'), '2002 F150', 'Working truck AC works'),
#        ((SELECT id FROM users WHERE username = 'arash'), '2010 Honda Civic', 'must GO'),
#        ((SELECT id FROM users WHERE username = 'arash'), '1970 Chevy', 'Moms car has dent'),
#        ((SELECT id FROM users WHERE username = 'arash'), '1930 Benz', 'not working missing engine'),
#        ((SELECT id FROM users WHERE username = 'arash'), '2019 Tesla', 'brand new');
=======

