CREATE TABLE `Users` (
	`userID` INT(100) NOT NULL AUTO_INCREMENT,
	`firstName` varchar(50) NOT NULL,
	`lastName` varchar(50) NOT NULL,
	`phone` INT(50) NOT NULL,
	`email` varchar(50) NOT NULL,
	`password` varchar(100) NOT NULL,
	`role` INT(100) NOT NULL,
	`userImage` varchar(100) NOT NULL,
	PRIMARY KEY (`userID`)
);

CREATE TABLE `Roles` (
	`roleID` INT NOT NULL AUTO_INCREMENT,
	`roleName` varchar(50) NOT NULL,
	PRIMARY KEY (`roleID`)
);

CREATE TABLE `Student_Courses` (
	`Student_CoursesID` INT NOT NULL AUTO_INCREMENT,
	`userID` INT NOT NULL,
	`courseID` INT NOT NULL,
	PRIMARY KEY (`Student_CoursesID`)
);

CREATE TABLE `Courses` (
	`courseID` INT NOT NULL AUTO_INCREMENT,
	`courseName` varchar(100) NOT NULL,
	`courseDescription` varchar(100) NOT NULL,
	`courseImage` varchar(100) NOT NULL,
	PRIMARY KEY (`courseID`)
);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk0` FOREIGN KEY (`role`) REFERENCES `Roles`(`roleID`);

ALTER TABLE `Student_Courses` ADD CONSTRAINT `Student_Courses_fk0` FOREIGN KEY (`userID`) REFERENCES `Users`(`userID`);

ALTER TABLE `Student_Courses` ADD CONSTRAINT `Student_Courses_fk1` FOREIGN KEY (`courseID`) REFERENCES `Courses`(`courseID`);

