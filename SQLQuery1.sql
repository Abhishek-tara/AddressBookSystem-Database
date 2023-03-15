
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

------ UC 3: Insert Values to Table ------00
insert into  AddressBookDetails
values('Abhi', 'stark', '54 backstreet', 'CG', 'India', 123654, 09876557843, 'abhi@email.com'),
('Ramesh', 'kumar', '12 SM nagar', 'Mysore', 'Karnataka', 100004, 09876554322, 'gitesh@email.com'),
('Tarun', 'sharma', '3 AB nagar', 'Noida', 'UP', 543201, 09876552321, 'terisa@email.com'),
('Rakesh', 'yadav', '84 MJ nagar', 'Chennai', 'Tamil Nadu', 129123, 09876554367, 'harsha@email.com')

--display table
select * from AddressBookDetails

----UC4 ability to edit existing contact using their name---
update AddressBookDetails set city='Mumbai' where firstName='Abhi'

--UC5 ability to delete existing contact using their name--
delete from AddressBookDetails where firstName='Tarun'

--UC6 -- ability to retrieve person using city or state from the table
select * from AddressBookDetails where city = 'Mysore' or state = 'karnataka'

------ UC 7: Ability to Retrieve Count of address book by city and state---
select Count(city) from AddressBookDetails
select count(state) from AddressBookDetails 

--UC8 Sort Contacts By Name in a City
select * from AddressBookDetails 
WHERE city = 'Chennai'
ORDER BY firstName

------ UC 9: Identify each Address Book with name andType ------
alter table AddressBookDetails 
add Book_Name VARCHAR(20),
Contact_Type VARCHAR(20)

--Update values for Type=Friends--
update AddressBookDetails
set Book_Name='FriendName',Contact_Type='Friends'
where FirstName='Ramesh' 

--Update values for Type=Family--
update AddressBookDetails
set Book_Name='FamilyName',Contact_Type='Family'
where FirstName='Rakesh'

--Update values for Type=Profession--
update AddressBookDetails
set Book_Name='Manager',Contact_Type='Profession'
where FirstName='Abhi'
select * from AddressBookDetails