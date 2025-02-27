-- DROP-CREATE SCHEMA
DROP SCHEMA IF EXISTS `wgu`;

CREATE SCHEMA `wgu`;
USE `wgu`;

-- -----------------------------------------------------
-- CREATE TABLES
-- -----------------------------------------------------

CREATE TABLE `terms` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `start_date` DATE NOT NULL,
	`end_date` DATE NOT NULL
);

CREATE TABLE `courses` (
	`code` VARCHAR(8) PRIMARY KEY NOT NULL,
    `name` VARCHAR(256) NOT NULL,
    `credit_units` INT NOT NULL,
    `start_date` DATE,
    `end_date` DATE,
    `term_id` INT ,
    FOREIGN KEY (`term_id`) REFERENCES `terms`(`id`)
);

-- -----------------------------------------------------
-- INSERTS
-- -----------------------------------------------------

INSERT INTO `terms` (`start_date`, `end_date`) VALUES
('2024-03-01', '2024-08-31'),
('2024-09-01', '2025-03-01'),
('2025-03-01', '2025-08-31');


INSERT INTO `courses` (`code`, `name`, `credit_units`, `term_id`) VALUES
('D427', 'Data Management - Applications', 4, 1),
('D197', 'Version Control', 1, 1),
('D281', 'Linux Foundations', 3, 1),
('D430', 'Funamentals of Information Security', 3, 1),
('C952', 'Computer Science', 3, 1),
('D286', 'Java Fundamentals', 3, 2),
('D287', 'Java Frameworks', 3, 2),
('D288', 'Back-End Programming', 3, 2),
('D387', 'Advanced Java', 3, 2),
('C958', 'Calculus I', 4, 3),
('D684', 'Introduction to Computer Science', 4, 3),
('D284', 'Software Engineering', 4, 3);

