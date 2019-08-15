
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


create table Tour0136(
TourName NVARCHAR(100)
,Description NVARCHAR(100) 
primary key(TourName))

create table Client0136(
ClientID INT
,Surname NVARCHAR(100)
,GivenName NVARCHAR(100)
,Gender NVARCHAR(1)
primary key(ClientID))

create table Event0136(
EventYear NVARCHAR(100)
,EverntMonth NVARCHAR(3)
,EventDay INT
,TourName NVARCHAR(100)
,Fee MONEY 
primary key(EventYear,EverntMonth,EventDay,TourName))


create table Booking0136(
DateBooked DATE
,Payment MONEY
,EventYear INT
,EverntMonth INT
,EventDay INT
,TourName NVARCHAR(100)
,ClientID INT
,primary key(EventYear,EverntMonth,EventDay,TourName,ClientID))