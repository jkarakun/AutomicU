
CREATE TABLE courses(
	course_id 	number (18) PRIMARY KEY,
	name      	varchar2(400) NOT NULL,
	description varchar2(4000) NOT NULL)
tablespace 
	users;


INSERT INTO courses
     VALUES (1,'AMB01 - Application Manager Basics','The Applications Manager Basic training course will provide students a complete understanding of AM over the course of 3 days. This training provides a comprehensive introduction into understanding AM9. First you will learn how to run tasks and how to manage and monitor those tasks through Applications Manager. Then as the course progresses you will learn how create job definitions and workflows. Finally the course will teach you how to create substitution variables, condition statements and predecessors to create fully automated processes.');
INSERT INTO courses
     VALUES (2,'AEA01 - Automation Engine - Admin','The Automation Engine Admin course will give students a complete understanding of the architecture and set up of the Automation Engine.  It will enable students to be prepared to install, configure, set up, and maintain customized environments.  Students will also install different types of agents to connect to applications and other software products and tools.  The ideal student for this course is a new administrator, someone looking to install new environments, or an admin who is looking to pull more information from their AE system.');
INSERT INTO courses
     VALUES (3,'AEB01 - Automation Engine Basics','The Automation Engine Basics course is ideal for new users of the Automation Engine.  Student will navigate the User Interface and begin to build WorkFlows that can handle complex time and event triggers with many different responses and results.  Students will understand how to manipulate the system to fit their needs and automate tasks with variables, notifications, and prompts.  Ideal students for this course are new users to the Automation Engine, and those with no other formal training who wish to get the most out of their experience.');
INSERT INTO courses
     VALUES (4,'AES01 - Automation Engine Script','The Automation Engine Script course will walk students through the main action language of the Automation Engine.  Your instructor will explain the functions and commands and give specific examples and exercises to expand your knowledge of the flexibility and power of automation.  The ideal student for this course is a person who is experienced in the Automation Engine who wants to pull more power and flexibility from their jobs and tasks.');

commit;



CREATE TABLE instructors(
	instructor_id 	number(18) PRIMARY KEY, 
	name 			varchar2(400) NOT NULL,
	description     varchar2(4000) NOT NULL,
	title           varchar2(4000) NOT NULL,
	image            varchar2(4000) NOT NULL)
 tablespace 
	users;


INSERT INTO instructors
     VALUES (1,'Ken','Automation Engine Expert','King of Automation','img/team/kenny.jpg');
INSERT INTO instructors
     VALUES (2,'Larry','Release Automation Expert','ARA Evangalist','img/team/larry.jpg');
INSERT INTO instructors
     VALUES(3,'Karen','Release AutomationExpert','ARA Ninja','img/team/karen.jpg');
INSERT INTO instructors
     VALUES(4,'Dan','Release Automation Expert','Dumpster Fire Expert','img/team/dan.jpg');
commit;
