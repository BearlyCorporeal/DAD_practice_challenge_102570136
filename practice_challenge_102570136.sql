
-- Tour0136(TourName,Description
-- primary key(TourName))

-- Client0136(ClientID,Surname,GivenName,Gender
-- primary key(ClientID))

-- Event0136(EventYear,EverntMonth,EventDay,TourName,Fee
-- primary key(EventYear,EverntMonth,EventDay,TourName)
-- foreign Key(TourName)from Tour0136)

-- Booking0136( DateBooked,Payment,EventYear,EverntMonth,EventDay,TourName,ClientID
-- primary key(EventYear,EverntMonth,EventDay,TourName,ClientID)
-- foreign key(EventYear,EverntMonth,EventDay,TourName)from Event0136
-- foreign key(ClientID)from Client0136 

drop TABLE if EXISTS Tour0136;
create table Tour0136(
TourName NVARCHAR(100)
,Description NVARCHAR(100) 
primary key(TourName))

insert INTO Tour0136(TourName,Description)VALUES('North','Tour of wineries and outlets of the Bedigo and Castlemaine region')
insert INTO Tour0136(TourName,Description)VALUES('West','Tour of wineries in the west')
insert INTO Tour0136(TourName,Description)VALUES('South','Tour of wineries in the South')
insert INTO Tour0136(TourName,Description)VALUES('East','Tour of wineries in the east')

drop TABLE if EXISTS Client0136;
create table Client0136(
ClientID INT
,Surname NVARCHAR(100)
,GivenName NVARCHAR(100)
,Gender NVARCHAR(1)
primary key(ClientID))

INSERT INTO Client0136 (ClientId,Surname,GivenName,Gender)VALUES(1,'Price','Taylor','M')
INSERT INTO Client0136 (ClientId,Surname,GivenName,Gender)VALUES(2,'Holt','Simon','M')
INSERT INTO Client0136 (ClientId,Surname,GivenName,Gender)VALUES(3,'Papa','Anthony','M')
INSERT INTO Client0136 (ClientId,Surname,GivenName,Gender)VALUES(4,'Farmer','Lewis','M')

drop TABLE if EXISTS Event0136;

create table Event0136(
EventYear NVARCHAR(100)
,EventMonth NVARCHAR(3)
,EventDay INT
,TourName NVARCHAR(100)
,EventFee MONEY 
primary key(TourName,EventMonth,EventDay,EventYear))

INSERT INTO Event0136(TourName,EventMonth,EventDay,EventYear,EventFee)VALUES('North','Jan',9,2016,200);
INSERT INTO Event0136(TourName,EventMonth,EventDay,EventYear,EventFee)VALUES('North','Aug',8,2017,200);
INSERT INTO Event0136(TourName,EventMonth,EventDay,EventYear,EventFee)VALUES('West','Oct',20,2018,210);
INSERT INTO Event0136(TourName,EventMonth,EventDay,EventYear,EventFee)VALUES('South','jan',16,2017,190);

drop TABLE if EXISTS Booking0136;

create table Booking0136(
DateBooked DATE
,Payment MONEY
,EventYear INT
,EventMonth NVARCHAR(3)
,EventDay INT
,TourName NVARCHAR(100)
,ClientID INT
,primary key(EventYear,EventMonth,EventDay,TourName,ClientID))

INSERT INTO Booking0136 (ClientId,TourName,EventMonth,EventDay,EventYear,Payment,DateBooked)VALUES(1,'North','Jan',9,2016,200,'10/12/2015');
INSERT INTO Booking0136 (ClientId,TourName,EventMonth,EventDay,EventYear,Payment,DateBooked)VALUES(2,'West','Oct',	20,2018,200,'11/09/2018');
INSERT INTO Booking0136 (ClientId,TourName,EventMonth,EventDay,EventYear,Payment,DateBooked)VALUES(3,'North','Aug',8,2017,200,'12/12/2016');
INSERT INTO Booking0136 (ClientId,TourName,EventMonth,EventDay,EventYear,Payment,DateBooked)VALUES(3,'South','jan',16,2017,190,'1/03/2016');

SELECT* FROM Client0136;