USE codeup_test_db;

drop table if exists albums;
CREATE TABLE albums (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL ,
    name VARCHAR(50) NOT NULL ,
    release_date VARCHAR(50) NOT NULL ,
    sales VARCHAR(50) NOT NULL ,
    genre VARCHAR(50) NOT NULL ,
    PRIMARY KEY (id),
    UNIQUE (name, artist)
);


