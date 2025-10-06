DROP DATABASE IF EXISTS db_rezo_social;
CREATE DATABASE db_rezo_social CHARACTER SET utf8mb4 COLLATE UTF8MB4_GENERAL_CI;
/*GRANT ALL PRIVILEGES ON db_rezo_social.* TO 'frederic'@'%' IDENTIFIED BY 'azer';
FLUSH PRIVILEGES;
USE db_rezo_social;
SOURCE /docker-entrypoint-initdb.d/tables.sql;
SOURCE /docker-entrypoint-initdb.d/data.sql;*/

DROP TABLE IF EXISTS rs_users;
DROP TABLE IF EXISTS rs_posts;

USE db_rezo_social;
CREATE TABLE rs_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE rs_posts (
    p_id INT AUTO_INCREMENT PRIMARY KEY,
    rs_user_id INT NOT NULL,
    rs_posts_title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (rs_user_id) REFERENCES rs_users(id) ON DELETE CASCADE
);