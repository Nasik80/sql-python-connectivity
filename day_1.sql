create table student(
student_id INT auto_increment primary key,
first_name varchar(20) not null,
last_name varchar(30), 
age int, 
gender enum('male','female','other'),
course enum('python','java'),
city varchar(20) not null,
email varchar(50) unique,
phone varchar(15),
admission_date date,
status varchar(20) default 'Active'

);

INSERT INTO student
(first_name, last_name, age, gender, course, city, email, phone, admission_date, status)
VALUES
('Rahul', 'Sharma', 21, 'Male', 'Python', 'Kochi',
'rahul@gmail.com', '9876543210', '2026-08-01', 'Active');

INSERT INTO student
(first_name, last_name, age, gender, course, city, email, phone, admission_date)
VALUES
('Anjali', 'Nair', 20, 'Female', 'java', 'Trivandrum',
'anjali@gmail.com', '9876501234', '2026-08-02');

INSERT INTO student
(first_name, last_name, age, gender, course, city, email, phone, admission_date, status)
VALUES
('Arjun', 'Das', 22, 'Male', 'Python', 'Calicut',
'arjun@gmail.com', '9876512345', '2026-08-03', 'Active');

INSERT INTO student
(first_name, last_name, age, gender, course, city, email, phone, admission_date)
VALUES
('Meera', 'Joseph', 19, 'Female', 'java', 'Kannur',
'meera@gmail.com', '9876523456', '2026-08-04');

INSERT INTO student
(first_name, last_name, age, gender, course, city, email, phone, admission_date, status)
VALUES
('Akash', 'Kumar', 23, 'Male', 'Java', 'Thrissur',
'akash@gmail.com', '9876534567', '2026-08-05', 'Inactive');

INSERT INTO student
(first_name, last_name, age, gender, course, city, email, phone, admission_date, status)
VALUES
('Sneha', 'Roy', 21, 'Female', 'Java', 'Kollam',
'sneha@gmail.com', '9876545678', '2026-08-06', 'Active');

select * from student;
select first_name, course, city from student;
select * from student where course = 'java';
select * from student where age > 20;
select * from student where city = 'kochi';
