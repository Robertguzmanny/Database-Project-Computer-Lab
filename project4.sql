/*
Robert Guzman
Project 4
*/
CREATE DATABASE IF NOT EXISTS BANK;
Use BANK;
SET foreign_key_checks = 0;
CREATE TABLE Bank(
Code INT(10) UNIQUE NOT NULL,
Name VARCHAR(20) NOT NULL,
Addr VARCHAR(200) NOT NULL,
primary key(Code)
);
CREATE TABLE Account(
Code INT(10) UNIQUE NOT NULL,
Acct_no int(17) unique NOT NULL,
Type VARCHAR(8) NOT NULL,
Balance decimal (10,2) not null,
primary key(Acct_no),
foreign key(Code) references Bank(Code)
);

CREATE TABLE Loan(
Code INT(10) UNIQUE NOT NULL,
Loan_no int(20) unique NOT NULL,
Type VARCHAR(15) NOT NULL,
Amount decimal (10,2) not null,
primary key(Loan_no),
foreign key(Code) references Bank(Code)
);

CREATE TABLE Customer(
Ssn INT(9) UNIQUE NOT NULL,
Name varchar(160) NOT NULL,
Addr VARCHAR(200) NOT NULL,
Phone varchar(12) not null,
primary key(Ssn)
);
CREATE TABLE Bank_Branch(
Branch_no INT(6) UNIQUE NOT NULL,
Addr VARCHAR(200) NOT NULL,
Code INT(10) UNIQUE NOT NULL,
primary key(Code, Branch_no),
foreign key(Code) references Bank(Code)
);

CREATE TABLE A_C(
Acct_no int(17) unique NOT NULL,
Ssn INT(9) UNIQUE NOT NULL,
primary key(Ssn, Acct_no),
foreign key(Ssn) references Customer(Ssn),
foreign key(Acct_no) references Account(Acct_no)
);

CREATE TABLE L_C(
Loan_no int(20) unique NOT NULL,
Ssn INT(9) UNIQUE NOT NULL,
primary key(Ssn, Loan_no),
foreign key(Ssn) references Customer(Ssn),
foreign key(Loan_no) references Loan(Loan_no)
);
SET foreign_key_checks = 1;

insert into Bank
Values('57325', 'POPULAR',        '976 Lien Alley');
insert into Bank
Values('29792', 'POPULAR',        '022 Elmside Crossing');
insert into Bank
Values('77941', 'POPULAR',        '1885 Schmedeman Drive');
insert into Bank
Values('37437', 'POPULAR',        '2 Fordem Road');
insert into Bank
Values('70860', 'POPULAR',        '3 Elka Drive');
insert into Bank
Values('14951', 'POPULAR',        '10 Shasta Park');
insert into Bank
Values('18548', 'POPULAR',        '1 Quincy Trail');
insert into Bank
Values('80199', 'POPULAR',        '6 Anniversary Junction');
insert into Bank
Values('29795', 'POPULAR',        '6 Blue Bill Park Junction');
insert into Bank
Values('57613', 'POPULAR',        '5 Bonner Alley');
insert into Account
Values('57325', '993300','Checking','50');
insert into Account
Values('29792', '808751','Saving','5900');
insert into Account
Values('77941', '760543','Saving','9090');
insert into Account
Values('37437', '175710','Checking','599');
insert into Account
Values('70860', '851371','Checking','76');
insert into Account
Values('14951', '838534','Saving','1349');
insert into Account
Values('18548', '200911','Checking','2345');
insert into Account
Values('80199', '132747','Saving','5678');
insert into Account
Values('29795', '258680','Saving','89');
insert into Account
Values('57613', '722386','Checking','198');
insert into Loan
Values('57325', '101830','Home_Loan','100000');
insert into Loan
Values('29792', '882083','Personal_Loan','1500');
insert into Loan
Values('77941', '782144','Personal_Loan','1019');
insert into Loan
Values('37437', '728862','Car_Loan','25000');
insert into Loan
Values('70860', '305047','Home_Loan','450000');
insert into Loan
Values('14951', '807322','Car_Loan','30000');
insert into Loan
Values('18548', '703574','Home_Loan','300000');
insert into Loan
Values('80199', '772112','Personal_Loan','22000');
insert into Loan
Values('29795', '536332','Home_Loan','800000');
insert into Loan
Values('57613', '542523','Personal_Loan','1400');
insert into Customer
Values('249338658',       'Rogan_Robinson','526-5984 Nam St.','799-362-9193');
insert into Customer
Values('243617532',       'Honorato_Colon','272-4272 Aliquam St.','481-587-4068');
insert into Customer
Values('401334351',       'Chaim_Preston','P.O. Box 519, 9649 Ante. Rd.','801-546-3802');
insert into Customer
Values('962620555',       'Odessa_Soto','Ap #361-5164 Non, St','393-211-1366');
insert into Customer
Values('645252810',       'Dexter Hooper','915-7362 At, Rd.','478-588-1513');
insert into Customer
Values('672271964',       'Colton Grimes','3094 Semper Rd.','579-285-9546');
insert into Customer
Values('143161131',       'Brynn Hanson','5351 Feugiat. Avenue','862-585-8156');
insert into Customer
Values('345689281',       'Britanni Chan','442-6642 Felis. Street','286-981-9588');
insert into Customer
Values('368253791',       'Doris Burke','623-5718 Semper St.','912-842-0774');
insert into Customer
Values('154075860',       'Dane Talley','Ap #795-4615 In Rd.','775-642-7488');
insert into bank_branch
Values('10000', '976 Lien Alley', '57325');
insert into bank_branch
Values('10001', '022 Elmside Crossing','29792');
insert into bank_branch
Values('10002', '1885 Schmedeman Drive','77941');
insert into bank_branch
Values('10003', '2 Fordem Road','37437');
insert into bank_branch
Values('10004', '3 Elka Drive','70860');
insert into bank_branch
Values('10005', '10 Shasta Park','14951');
insert into bank_branch
Values('10006', '1 Quincy Trail','18548');
insert into bank_branch
Values('10007', '6 Anniversary Junction','80199');
insert into bank_branch
Values('10008', '6 Blue Bill Park Junction','29795');
insert into bank_branch
Values('10009', '5 Bonner Alley','57613');
insert into a_c
values('993300','249338658');
insert into a_c
values('808751','243617532');
insert into a_c
values('760544','401334351');
insert into a_c
values('175710','962620555');
insert into a_c
values('851371','645252810');
insert into a_c
values('838534','672271964');
insert into a_c
values('200911', '143161131');
insert into a_c
values('132747','345689281');
insert into a_c
values('258680','368253791');
insert into a_c
values('722386','154075860');
insert into l_c
values('101830','249338658');
insert into l_c
values('882083','243617532');
insert into l_c
values('782144','401334351');
insert into l_c
values('728862','962620555');
insert into l_c
values('305047','645252810');
insert into l_c
values('807322','672271964');
insert into l_c
values('703574', '143161131');
insert into l_c
values('772112','345689281');
insert into l_c
values('536332','368253791');
insert into l_c
values('542523','154075860');

/*Question (E)
*/
SELECT count(*) from customer;

/*Question (G)
*/
select avg(balance) from account;

/*Question (H)
*/

select code, avg(balance)
from account
group by code;

