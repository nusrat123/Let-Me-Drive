CREATE TABLE [dbo].[tbl_admin](
	[ad_id] [int] IDENTITY(1000,1) PRIMARY KEY,
	[ad_username] [nvarchar](50) NOT NULL,
	[ad_password] [nvarchar](50) NOT NULL,
)
drop table tbl_admin
insert into tbl_admin
values('siham','admin139')
insert into tbl_admin
values('fuad','admin137')
select * from tbl_admin
CREATE TABLE [dbo].[Users]
(
	 [UserID]             INT            IDENTITY (1, 1) PRIMARY KEY,
    [UserName]           NVARCHAR (50)  NOT NULL,
    [UserEmail]          NVARCHAR (50)  NOT NULL,
    [UserPassword]       NVARCHAR (50)  NOT NULL,
    [UserAddress]        NVARCHAR (MAX) NULL,
    [UserContact_number] NVARCHAR (50)  NULL,
    [UserPhoto]          NVARCHAR (MAX) NULL,
    [UserNID]            NVARCHAR (MAX) NULL,
    [UserDrivingID]      NVARCHAR (MAX) NULL,
    [UserStatus]         NVARCHAR (50)  DEFAULT ('Pending'),
    [UserDateOfBirth]    NVARCHAR (50)  NULL
    
)
select * from Users
insert into Users
values('siham','si@gmail.com','1234','Dhaka','123456','pic','12345','12345','g')
insert into tbl_admin
values('fuad','admin137')
CREATE TABLE [dbo].[Car_details]
(
	[CarID] INT IDENTITY(1000,1) PRIMARY KEY,
	[CarNumber] NVARCHAR(50) NOT NULL,
	[EngineNumber] NVARCHAR(50) NOT NULL,
	[RegistrationYear] NVARCHAR(50) NOT NULL, 
	[CarDetails] NVARCHAR(MAX),
	[CarImage] NVARCHAR(MAX),
	[Daily_Fee] NVARCHAR(50), 
)
select * from Car_details
drop  table Car_details
CREATE TABLE [dbo].[Bookings]
(
	[BookingID] INT IDENTITY(1,1) PRIMARY KEY,
	[UserID] INT NOT NULL FOREIGN KEY REFERENCES Users(UserID),
	[CarID] INT NOT NULL FOREIGN KEY REFERENCES Car_details(CarID),
	 [Start_date]    NVARCHAR (50)  NULL,
    [Start_time]    NVARCHAR (50)  NULL,
    [End_date]      NVARCHAR (50)  NULL,
    [End_time]      NVARCHAR (50)  NULL,
    [Start_place]   NVARCHAR (MAX) NOT NULL,
    [End_place]     NVARCHAR (MAX) NOT NULL,
    [TotalAmount]   NVARCHAR (50)  NULL,
    [BookingStatus] NVARCHAR (50)  DEFAULT ('Pending'),
    
)
drop table Bookings


CREATE TABLE [dbo].[Chats]
(
	[ChatID] INT IDENTITY(1,1) PRIMARY KEY,
	[UserID] INT NOT NULL FOREIGN KEY REFERENCES Users(UserID),
	[EmployeeID] INT NOT NULL FOREIGN KEY REFERENCES Employees(EmployeeID),
	[Message] NVARCHAR(MAX) NULL,
)


CREATE TABLE [dbo].[Damage_details]
(
	[DamageID] INT IDENTITY(500,1) PRIMARY KEY,
	[CarID] INT NOT NULL FOREIGN KEY REFERENCES Car_details(CarID),
	[CarImage_Front] NVARCHAR(MAX) NULL,
        [CarImage_Back] NVARCHAR(MAX) NULL,
        [CarImage_Right] NVARCHAR(MAX) NULL,
        [CarImage_Left] NVARCHAR(MAX) NULL,
	
)
drop table Damage_details





CREATE TABLE [dbo].[Employees]
(
	[EmployeeID] INT IDENTITY(1,1) PRIMARY KEY,
	[EmployeeName] NVARCHAR(50) NOT NULL,
	[EmployeeEmail] NVARCHAR(50) NOT NULL,
	[EmployeePassword] NVARCHAR(50) NOT NULL,
	[EmployeeAddress] NVARCHAR(MAX),
	[EmployeePhoto] NVARCHAR(MAX),
	[EmployeeNID] NVARCHAR(MAX),
	[EmployeeContact_number] NVARCHAR(50),
)



CREATE TABLE [dbo].[Reviews]
(
	[ReviewID] INT IDENTITY(2000,1) PRIMARY KEY,
	[UserID] INT NOT NULL FOREIGN KEY REFERENCES Users(UserID),
	[CarID] INT NOT NULL FOREIGN KEY REFERENCES Car_details(CarID),
	[ReviewDate] NVARCHAR(50) NULL,
	[Validation] NVARCHAR(50) NULL,
	[Comment] NVARCHAR(MAX) NULL,
)
drop table Reviews

INSERT INTO Car_details( CarNumber, EngineNumber,RegistrationYear,CarDetails,Daily_Fee)
VALUES ('DHA-KA-5322','ENG763 123 30098','2017','bla bla bla','1800');

INSERT INTO Users(UserName, UserEmail, UserPassword,UserStatus)
Values ('abc','def@gmail','111','Pending' );

INSERT INTO Users(UserName, UserEmail, UserPassword,UserStatus)
Values ('abc1','def1@gmail','111','Pending' );

INSERT INTO Users(UserName, UserEmail, UserPassword,UserStatus)
Values ('abc2','def2@gmail','111','Pending' );