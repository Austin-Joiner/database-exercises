USE codeup_test_db;

drop table if exists albums;
CREATE TABLE albums (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(50),
    release_date VARCHAR(50),
    sales VARCHAR(50),
    genre VARCHAR(50),
    PRIMARY KEY (id)
);


