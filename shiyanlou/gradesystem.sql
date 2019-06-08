create database gradesystem;

use gradesystem;

create table student
(
	sid int not null AUTO_INCREMENT,
	sname varchar(20) not null,
	gender varchar(20) not null,
	PRIMARY KEY(sid)
);

create table course
(
	cid int not null AUTO_INCREMENT,
	cname varchar(20) not null,
	PRIMARY KEY(cid)
);

create table mark
(
	mid int not null AUTO_INCREMENT,
	sid int not null,
	cid int not null,
	PRIMARY KEY(mid),
	FOREIGN KEY(sid) REFERENCES student(sid),
	FOREIGN KEY(cid) REFERENCES course(cid)
);

insert into student values(1,'Tom','male'),(2,'Jack','male'),(3,'Rose','female');
insert into course values(1,'math'),(2,'physics'),(3,'chemistry');
insert into mark values(1,1,1,80),(2,2,1,85),(3,3,1,90),(4,1,2,60),(5,2,2,90),(6,3,2,75),(7,1,3,95),(8,2,3,75),(9,3,3,85);