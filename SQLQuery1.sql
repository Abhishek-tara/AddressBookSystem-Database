
-- Welcome to the Address Book System-Database

--UC01- Create Address Book database

create database Address_Book

use Address_Book

----UC02 Create Table----
create table AddressBookDetails(
firstName varchar(200) not null,
lastName varchar(200) not null,
address varchar(255) not null,
city varchar(255),
state varchar(255),
zip int,
phoneNumber bigint,
email varchar(200) not null
)

------ UC 3: Insert Values to Table ------
insert into  AddressBookDetails
values('Abhi', 'stark', '54 backstreet', 'CG', 'India', 123654, 09876557843, 'abhi@email.com'),
('Ramesh', 'kumar', '12 SM nagar', 'Mysore', 'Karnataka', 100004, 09876554322, 'gitesh@email.com'),
('Tarun', 'sharma', '3 AB nagar', 'Noida', 'UP', 543201, 09876552321, 'terisa@email.com'),
('Rakesh', 'yadav', '84 MJ nagar', 'Chennai', 'Tamil Nadu', 129123, 09876554367, 'harsha@email.com')

--display table
select * from AddressBookDetails

----UC4 ability to edit existing contact using their name---
update AddressBookDetails set city='Mumbai' where firstName='Abhi'