create database hr;
use hr;

-- Create departmet table

create table dept(
	dept_id integer NOT NULL, 
	dept_name varchar(100), 
	primary key (dept_id)
	)

-- Create employee table

create table emp(
	emp_id integer NOT NULL, 
	dept_id integer, 
	emp_fname varchar(50), 
	emp_lname varchar(50), 
	emp_salary float, 
	primary key (emp_id), 
	foreign key (dept_id) references department(dept_id)
	)

-- Create address table 

create table emp_add(
	emp_id integer, 
	emp_address varchar(250) NOT NULL, 
	emp_city varchar(50), 
	emp_zipcode varchar(7), 
	emp_province varchar(250), 
	foreign key (emp_id) references employee(emp_id)
	)

-- Create email table

create table emp_email(
	emp_id integer, 
	email varchar(50) NOT NULL, 
	foreign key (emp_id) references employee(emp_id)
	)

-- Create phone number table

create table emp_phonenum(
	emp_id integer, 
	emp_cell_num varchar(20) NOT NULL, 
	emp_home_num varchar(20), 
	emp_work_num varchar(20), 
	foreign key (emp_id) references employee(emp_id)
	)


-- Sample data

-- Insert data into department table
insert into dept values(1, "HR");
insert into dept values(2, "Sales");
insert into dept values(3, "Accounting");
insert into dept values(4, "Finance");
insert into dept values(5, "Admin");
insert into dept values(6, "HR");
insert into dept values(7, "IT");
insert into dept values(8, "Operations");

-- Insert data into emp table
insert into emp values(1, 10, "Archana", "M", 90000.00);
insert into emp values(2, 60, "Bhakti", "V", 120000.00);
insert into emp values(3, 80, "Gita", "Y", 15000.00);
insert into emp values(4, 50, "Maunee", "P", 90000.00);
insert into emp values(5, 70, "Paresh", "Y", 140000.00);
insert into emp values(6, 20, "Poonam", "P", 100000.00);
insert into emp values(7, 70, "Raunak", "R", 10000.00);

-- Insert data into emp_add table
insert into emp_add values(1, "163 Skyview Dr.", "Brampton", "6h3 7t6", "Ontario");
insert into emp_add values(2, "3746 Bottomwood Street", "Ottawa", "7h9 72h", "Ontario");
insert into emp_add values(3, "293th Street", "Scarborough", "7j2 8k9", "Ontario");
insert into emp_add values(4, "82th Street", "Toronto", "9k2 0k3", "Ontario");
insert into emp_add values(5, "8837 Harry Potter Street", "Etobicoke", "1o1 1o1", "Ontario");
insert into emp_add values(6, "278 Random Street", "Scarborough" "8j3 3k3", "Ontario");
insert into emp_add values(7, "72th Street", "Toronto", "9i9 2k2", "Ontario");
insert into emp_add values(6, "834th Street", "Cambridge", "8e8 w8s", "Ontario");
insert into emp_add values(3, "832 JK Street", "Calgary", "1o3 9d5", "Alberta");

-- Insert data into email table
insert into emp_email values(1, "abc@gmail.com");
insert into emp_email values(2, "def@gmail.com");
insert into emp_email values(3, "ghi@gmail.com");
insert into emp_email values(4, "jkl@gmail.com");
insert into emp_email values(5, "mno@gmail.com");
insert into emp_email values(6, "pqr@gmail.com");
insert into emp_email values(7, "stu@gmail.com");
insert into emp_email values(5, "random@gmail.com");
insert into emp_email values(4, "fun@gmail.com");

-- Insert data into phone number table
insert into emp_phonenum values(1, "987-324-5255", "345-635-3857", " ");
insert into emp_phonenum values(2, "347-838-2737", "347-234-3838", "834-294-2884");
insert into emp_phonenum values(3, "283-348-2938", "348-999-8489", "347-489-2948");
insert into emp_phonenum values(4, "874-848-2949", " ", "849-848-2344");
insert into emp_phonenum values(5, "235-284-8388", " ", " ");
insert into emp_phonenum values(6, "237-494-4939", "238-294-9489", " ");
insert into emp_phonenum values(7, "384-283-4889", "347-488-9389", "327-949-0999");
insert into emp_phonenum values(5, "374-888-9999", " ", "383-499-9444");
insert into emp_phonenum values(4, "838-293-8948", "727-948-8578", "846-958-8468");


