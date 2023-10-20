CREATE DATABASE `library`;

USE library;

CREATE TABLE `catalog` (
`book_id` int NOT NULL AUTO_INCREMENT,
`title` varchar(45) NOT NULL,
`author_id` int NOT NULL,
`genre` varchar(45),
`publisher` varchar(45) NOT NULL,
`ISBN` varchar(17) NOT NULL,
`price` decimal(5,2) NOT NULL,
`pub_date` date NOT NULL,
`status` varchar(10) NOT NULL,
PRIMARY KEY (`book_id`),
UNIQUE KEY `book_id_UNIQUE` (`book_id`)

) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `library_user` (
`user_id` int NOT NULL AUTO_INCREMENT,
`firstname` varchar(45) NOT NULL,
`lastname` varchar(45) NOT NULL,
`address` varchar(45) NOT NULL,
`postcode` varchar(45) NOT NULL,
`email` varchar(17) NOT NULL,
`dob` decimal(5,2) NOT NULL,
`date_joined` date NOT NULL,
PRIMARY KEY (`user_id`),
UNIQUE KEY `user_id_UNIQUE` (`user_id`)


) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `authors` (
`author_id` int NOT NULL AUTO_INCREMENT,
`firstname` varchar(45) NOT NULL,
`lastname` varchar(45) NOT NULL,

PRIMARY KEY (`author_id`),
UNIQUE KEY `author_id_UNIQUE` (`author_id`)


) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `transactions` (
`transaction_id` int NOT NULL AUTO_INCREMENT,
`book_id` int NOT NULL,
`user_id` int NOT NULL,
`date_borrowed` date NOT NULL,
`due_date` date NOT NULL,
`date_returned` date,
`book_condition` varchar(17),
`dob` decimal(5,2) NOT NULL,
`date_joined` date NOT NULL,
PRIMARY KEY (`transaction_id`),
UNIQUE KEY `transaction_id_UNIQUE` (`transaction_id`)


) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE catalog
ADD CONSTRAINT authorid
FOREIGN KEY (author_id) REFERENCES authors(author_id);

