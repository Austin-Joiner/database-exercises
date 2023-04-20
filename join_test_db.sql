USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);


-- added 4 users 1 null 3 authors
INSERT INTO users (name, email, role_id)
VALUES ('phil', 'phil@example.com', null),
       ('jack', 'jack@example.com', 2),
       ('tim', 'tim@example.com', 2),
       ('kate', 'kate@example.com', 2);

--JOIN users and roles
SELECT users.name as user_name, roles.name as role_name
FROM users
Join roles ON users.role_id = roles.id;-- this will pull from users the names of and join them with role_id ex author if they has 2 but leaves out anyone that doesnt have a role or a role that doesnt have a worker.

--LEFT JOIN users and roles
SELECT users.name as user_name, roles.name as role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id; -- this one did a left join in this example users is on left and roles is on right so it paired all users with there roles and if the user didnt have a role it was null all user info showed up but only qualifying info from roles showed up.

--RIGHT JOIN users and roles
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;-- this is the same as left except now all roles show up and if they dont have a worker than the user slot is null.



SELECT roles.name AS role_name, COUNT(users.id) AS 'list of roles with a number of workers in each'
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;




-- SELECT * from roles;
-- SELECT * from users;
