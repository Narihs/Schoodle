CREATE TABLE `Users` (
	`userID` INT NOT NULL,
	`firstName` varchar(50) NOT NULL,
	`lastName` varchar(50) NOT NULL,
	`phone` INT(50) NOT NULL,
	`email` varchar(50) NOT NULL,
	`password` varchar(50) NOT NULL,
	`role` varchar(50) NOT NULL,
	`imageFileName` varchar(50) NOT NULL,
	PRIMARY KEY (`userID`)
);

CREATE TABLE `Courses` (
	`courseID` INT NOT NULL,
	`courseName` varchar(50) NOT NULL,
	`courseDescription` varchar(50) NOT NULL,
	`courseImageFileName` varchar(50) NOT NULL,
	PRIMARY KEY (`courseID`)
);

CREATE TABLE `Roles` (
	`roleID` INT NOT NULL,
	`roleName` varchar(50) NOT NULL,
	PRIMARY KEY (`roleID`)
);

CREATE TABLE `Student_Courses` (
	`Student_CourseID` INT NOT NULL,
	`studentID` INT NOT NULL,
	`courseID` INT NOT NULL,
	PRIMARY KEY (`Student_CourseID`)
);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk0` FOREIGN KEY (`role`) REFERENCES `Roles`(`roleID`);

ALTER TABLE `Student_Courses` ADD CONSTRAINT `Student_Courses_fk0` FOREIGN KEY (`studentID`) REFERENCES `Users`(`userID`);

ALTER TABLE `Student_Courses` ADD CONSTRAINT `Student_Courses_fk1` FOREIGN KEY (`courseID`) REFERENCES `Courses`(`courseID`);

