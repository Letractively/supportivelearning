create database SupportiveLearning
GO

use SupportiveLearning
GO
create table Newscategories
(
	NewsCategoryId   INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	NewsCategoryName NVARCHAR(100),
	Description NVARCHAR(200)
)
GO
create table News
(
	NewsId           INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	NewsCategoryId	 INT REFERENCES Newscategories(NewsCategoryId) NOT NULL,	
	Tittle			 NVARCHAR(100),
	Picture			 NVARCHAR(100),
	SubContent		 NVARCHAR(150),
	NewsContent		 NTEXT,
	DateCreation     DATETIME DEFAULT GETDATE()
)
GO
create table Roles
(
	RoleId           INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	RoleName   		NVARCHAR(100),
	Description      NVARCHAR(100)
)
GO
create table Account
(
	AcountId         INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	RoleId           INT REFERENCES Roles(RoleId) NOT NULL,
	UserName         NVARCHAR(100),
	PassWord         NVARCHAR(100),
	DateCreation       DATETIME DEFAULT GETDATE()
)
GO
create table Course
(
	CourseId		 INT IDENTITY(1,1) PRIMARY KEY,
	CourseName		 NVARCHAR(100),
	DateStart		 DATETIME DEFAULT GETDATE(),
	DateEnd			 DATETIME
)
GO
create table Semester
(
	SemesterId INT IDENTITY(1,1) PRIMARY KEY,
	SemesterName NVARCHAR(100),
	SemesterTime int
)
GO
create table Batch
(
	BatchId				INT IDENTITY(1,1) PRIMARY KEY,
	CourseId			INT REFERENCES Course(CourseId) NOT NULL,
	SemesterId			INT REFERENCES Semester(SemesterId) NOT NULL,
	BatchName			NVARCHAR(100),
	StartDate			datetime default(getdate())
	
)
GO
create table Staff
(
	StaffId		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	AcountId     INT REFERENCES [Account](AcountId) NOT NULL,	
	StaffName	 NVARCHAR(100),
	BirthDay         DATETIME,
	Gender           BIT DEFAULT 1,
	Phone            NVARCHAR(100),
	Email            NVARCHAR(100) NOT NULL,
	Address          NVARCHAR(255)
) 
GO
create table StaffAndBatch
(
	StaffAndBatchId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	StaffId     INT REFERENCES Staff(StaffId) NOT NULL,
	BatchId     INT REFERENCES Batch(BatchId) NOT NULL
	
)
GO
create table Student
(
	StudentId        INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	RollNumber		 nvarchar(50) not null,
	AcountId         INT REFERENCES Account(AcountId) NOT NULL,
	BatchId			 INT REFERENCES Batch(BatchId) NOT NULL,	
	FullName         NVARCHAR(200) NOT NULL,
	BirthDay         DATETIME,
	Gender           BIT DEFAULT 1,
	Phone            NVARCHAR(100),
	Email            NVARCHAR(100) NOT NULL,
	Address          NVARCHAR(255)
)

GO
create table Subject
(
	SubjectId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	SubjectName NVARCHAR(100),
	
)
GO
create table Assignment
(
	AssignmentId     INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	SubjectId		 INT REFERENCES Subject(SubjectId) NOT NULL,
	StaffId			 INT REFERENCES Staff(StaffId) NOT NULL,
	BatchId			 INT REFERENCES Batch(BatchId) NOT NULL,
	AssignmentName   NVARCHAR(100),
	AssignmentFile   NVARCHAR(255),
	StartData		datetime,
	EndDate			datetime 
)
GO
create table StudentWork
(
	StudentWorkId	 INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	StudentId        INT REFERENCES Student(StudentId) NOT NULL,
	AssignmentId     INT REFERENCES Assignment(AssignmentId) NOT NULL,
	FileUpload       NVARCHAR(255),
	Mark             FLOAT,
	DateUpload       DATETIME DEFAULT GETDATE()
)

GO
create table Admin
(
	AdminId			INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	AcountId        INT REFERENCES Account(AcountId) NOT NULL,
	
)
GO
create table FAQ
(
	FAQId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Quesion ntext,
	Answer ntext,
	DateCreation datetime default(getdate())
)
GO
create table FeedBack
(
	FeedBackId		 INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	StudentId        INT REFERENCES Student(StudentId) NOT NULL,
	FeedBackTitle	 nvarchar(100),
	FeedBackContent ntext,
	DateCreation datetime default(getdate())
	
)
GO
create table FeedBackAnswer
(
	FeedBackAnswerId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FeedBackId         INT REFERENCES FeedBack(FeedBackId) NOT NULL,
	StaffId        INT REFERENCES Staff(StaffId) NOT NULL,
	FeedBackAnswer ntext,
	DateCreation datetime default(getdate())
)
--GO
--create table Comment
--(
--	CommentId		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	AcountId         INT REFERENCES Account(AcountId) NOT NULL,
--	FeedBackId         INT REFERENCES FeedBack(FeedBackId) NOT NULL,
--	CommentContent    ntext
--)









