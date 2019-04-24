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


