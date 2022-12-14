create DATABASE IF NOT EXISTS Computer_science_lab;
Use Computer_science_lab;
SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emplid_e` int  UNIQUE NOT NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `middle_initial` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `Sex` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `current_age` mediumint default NULL,
  `birthday` varchar(255),
  `Title` TEXT default NULL,
  `date_hire` varchar(255),
  `total_hours` mediumint default NULL,
  `hourly_rate` varchar(100) default NULL,
  PRIMARY KEY (`emplid_e`)
) AUTO_INCREMENT=1;

INSERT INTO `employee` (`emplid_e`,`first_name`,`last_name`,`middle_initial`,`phone`,`email`,`Sex`,`address`,`current_age`,`birthday`,`Title`,`date_hire`,`total_hours`,`hourly_rate`)
VALUES
  (36523701,"Echo","Scarlet","Jason","(546) 481-1551","tincidunt@outlook.com","Female","2862 Justo Street",34,"Mar 29, 1955","mauris","Jan 8, 2022",23,"$43.16"),
  (59587473,"Clayton","Galena","Summer","(720) 500-8343","convallis.dolor@hotmail.net","Male","9839 Enim. Rd.",63,"Feb 10, 1995","ipsum.","Dec 2, 2023",24,"$43.85"),
  (77500899,"Kaye","Caldwell","Audrey","1-689-511-7815","elit@yahoo.couk","Female","P.O. Box 618, 9774 Nisi Ave",27,"May 29, 1974","Donec","Aug 27, 2023",32,"$17.58"),
  (28349302,"Colette","Yuli","Bradley","(164) 589-9218","rhoncus@aol.org","Male","2078 Vivamus Rd.",35,"Sep 12, 1959","Quisque","Sep 18, 2022",39,"$48.63"),
  (20757820,"Zachary","Odessa","Raphael","(967) 706-5001","posuere.enim@outlook.edu","Female","P.O. Box 814, 1490 Ac Ave",37,"Feb 21, 1991","sit","Feb 14, 2023",26,"$49.20");

Select* from employee;

DROP TABLE IF EXISTS `employee_info`;

CREATE TABLE `employee_info` (
  `work_info`  serial NOT NULL,
  `title` TEXT default NULL,
  `date_hire` varchar(255),
  `hourly_rate` varchar(100) default NULL,
  `total_hours` mediumint default NULL,
  `emplid_e` int  UNIQUE NOT NULL,
  PRIMARY KEY (`work_info`)
) AUTO_INCREMENT=1;

INSERT INTO `employee_info` (`title`,`date_hire`,`hourly_rate`,`total_hours`,`emplid_e`)
VALUES
  ("computer","Mar 2, 2022","$58.36",4,36523701),
  ("Tutor,","Dec 26, 2021","$8.94",26,59587473),
  ("Tutor,","Mar 18, 2022","$53.69",7,77500899),
  ("Tutor,","Nov 14, 2022","$51.72",33,28349302),
  ("Tutor,","Feb 19, 2022","$64.53",23,20757820);
  
  Select* from employee_info;
  
  DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `Course_name` varchar(6) NOT NULL,
  `units` mediumint default NULL,
  `hours` mediumint default NULL,
  `description` TEXT default NULL,
  `title` TEXT default NULL,
  PRIMARY KEY (`Course_name`)
) AUTO_INCREMENT=1;

INSERT INTO `course` (`Course_name`,`units`,`hours`,`description`,`title`)
VALUES
  ("CMP426",5,5,"intro to Database","Database"),
  ("CMP420",3,3,"intro Operating system","OS"),
  ("CMP167",4,7,"programming methods","Intro"),
  ("CMP430",3,3,"intro to mobile programing","android dev"),
  ("CMP338",2,5,"Data structure","algorithms");
  
   Select* from course;
   
   DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `EMPLID` int  UNIQUE NOT NULL,
  `Firstname` varchar(255) default NULL,
  `Lastname` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `address` varchar(255) default NULL,
  PRIMARY KEY (`EMPLID`)
) AUTO_INCREMENT=1;

INSERT INTO `student` (`EMPLID`,`Firstname`,`Lastname`,`email`,`phone`,`address`)
VALUES
  (50882769,"Gabriel","Flavia","vitae.purus@protonmail.ca","(100) 932-7162","502-2650 Ac, Road"),
  (15167966,"Ginger","Quinn","integer.id@outlook.edu","(571) 228-9988","P.O. Box 241, 8459 Arcu. Road"),
  (67150394,"Laurel","Brennan","ante@icloud.org","(321) 637-5407","7400 Ultricies St."),
  (98506453,"Calista","Nichole","ridiculus.mus@outlook.edu","1-722-580-0256","167-2898 Vestibulum Av."),
  (11370387,"Sylvia","Phelan","risus.morbi@google.net","(627) 235-4248","489-1314 Erat. Street");
  
  Select* from student;
  
  DROP TABLE IF EXISTS `student_needs`;

CREATE TABLE `student_needs` (
  `learner` varchar(3) NOT NULL,
  `cause` TEXT default NULL,
  `clock_in` TEXT default NULL,
  `clock_out` TEXT default NULL,
  `check_in_date` varchar(255),
  PRIMARY KEY (`learner`)
) AUTO_INCREMENT=1;

INSERT INTO `student_needs` (`learner`,`cause`,`clock_in`,`clock_out`,`check_in_date`)
VALUES
  ("#21","Not understanding the class ","12PM","4PM","Aug 26, 2022"),
  ("#45","homework help ","12PM","3PM","Jan 15, 2023"),
  ("#68","exam review ","12PM","4PM","Dec 22, 2022"),
  ("#78","project criteria ","10AM","5PM","Oct 26, 2022"),
  ("#65","quiz preparation ","11AM","5PM","Jul 24, 2023");
  
  Select* from student_needs;
  
  DROP TABLE IF EXISTS `laptop`;

CREATE TABLE `laptop` (
  `serial_num` int  UNIQUE NOT NULL,
  `emplid_e` int  UNIQUE NOT NULL,
  `EMPLID` int  UNIQUE NOT NULL,
  `name` TEXT default NULL,
  `manufacture` TEXT default NULL,
  PRIMARY KEY (`serial_num`)
) AUTO_INCREMENT=1;

INSERT INTO `laptop` (`serial_num`,`emplid_e`,`EMPLID`,`name`,`manufacture`)
VALUES
  (48368,36523701,50882769,"DELL","Windows"),
  (43919,59587473,15167966,"HP","Windows"),
  (12461,77500899,67150394,"DELL","Windows"),
  (49516,28349302,98506453,"HP","Windows"),
  (35858,20757820,11370387,"HP","Windows");
  
  Select* from laptop;
  
  DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `book_id` varchar(4) NOT NULL,
  `title` TEXT default NULL,
  `EMPLID`int  UNIQUE NOT NULL,
  `emplid_e` int  UNIQUE NOT NULL,
  PRIMARY KEY (`book_id`)
) AUTO_INCREMENT=1;

INSERT INTO `book` (`book_id`,`title`,`EMPLID`,`emplid_e`)
VALUES
  (1150,"cracking the coding interview",50882769,36523701),
  (608,"crash course",15167966,59587473),
  (1284,"algorithms",67150394,77500899),
  (3656,"tech job",98506453,28349302),
  (6109,"learn dev",11370387,20757820);
  
  Select* from book;
  
  DROP TABLE IF EXISTS `daily_schedule`;

CREATE TABLE `daily_schedule` (
  `emplid_e` int  UNIQUE NOT NULL,
  `daily_schedule` TEXT default NULL,
  PRIMARY KEY (`emplid_e`)
) AUTO_INCREMENT=1;

INSERT INTO `daily_schedule` (`emplid_e`,`daily_schedule`)
VALUES
  (36523701,"F-F"),
  (59587473,"M-W"),
  (77500899,"F-F"),
  (28349302,"F-F"),
  (20757820,"M-W");
  Select* from daily_schedule;
  
  
  
  
  
  
  

/*

/*