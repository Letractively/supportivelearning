use SupportiveLearning
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'INSERT_USER' AND TYPE = 'P')
DROP PROC INSERT_USER
GO
create proc Sel_AssignmentsByBacthId
@BatchId int
as
begin
	select * from Assignment where BatchId = @BatchId
end

go
/* Create Procedure Sel_StaffById */

CREATE PROCEDURE Sel_StaffById
@StaffId		int 
AS BEGIN 
	 SELECT Staff.StaffId, Account.* 
	 FROM Staff inner join Account on Staff.AccountId = Account.AccountId
	 WHERE StaffId=@StaffId 
  END 

 GO 

/* Create Procedure Sel_RolesById */

CREATE PROCEDURE Sel_RolesById
@RoleId		int 
AS BEGIN 
	 SELECT RoleId,RoleName,Description 
	 FROM Roles
	 WHERE RoleId=@RoleId 
  END 

 GO
CREATE PROCEDURE Sel_SubjectById
@SubjectId		int 
AS BEGIN 
	 SELECT SubjectId,SubjectName 
	 FROM Subject
	 WHERE SubjectId=@SubjectId 
  END 
GO
CREATE PROCEDURE Sel_BatchById
@BatchId int
AS BEGIN 
	 SELECT * 
	 FROM Batch
	 WHERE BatchId=@BatchId 
  END 
GO

CREATE PROCEDURE Sel_Feedbacks
AS BEGIN 
	 SELECT *
	 FROM FeedBack
  END
go

CREATE PROCEDURE Sel_AccountByUserNameAndPass
@UserName nvarchar(100),
@Password nvarchar(100)
AS BEGIN
	SELECT * FROM Account
	WHERE UserName = @UserName AND Password = @Password
END
go
 CREATE PROCEDURE Ins_News
@Tittle	nvarchar(255) ,
@Picture	nvarchar(255) ,
@SubContent	nvarchar(500) ,
@NewsContent	ntext ,
@DateCreation	datetime
 
AS BEGIN 
     INSERT INTO News(Tittle,Picture,SubContent,NewsContent,DateCreation  ) 
     VALUES (@Tittle,@Picture,@SubContent,@NewsContent,@DateCreation  ) 
	select SCOPE_IDENTITY()
  END 

 GO 

CREATE PROCEDURE Upd_News 
@Tittle	nvarchar(255) ,
@Picture	nvarchar(255) ,
@SubContent	nvarchar(500) ,
@NewsContent	ntext ,
@DateCreation	datetime  ,
@NewsId	int
AS BEGIN 
     UPDATE News SET 
	Tittle 	 = @Tittle,
	Picture 	 = @Picture,
	SubContent 	 = @SubContent,
	NewsContent 	 = @NewsContent,
	DateCreation 	 = @DateCreation 
    WHERE NewsId=@NewsId 
  END 
GO
CREATE PROCEDURE Del_News 
@NewsId		int 
AS BEGIN 
     DELETE FROM News
     WHERE NewsId=@NewsId 
  END 

 GO 

CREATE PROCEDURE Sel_AllNews
AS BEGIN 
	 SELECT NewsId,Tittle,Picture,SubContent,NewsContent,DateCreation 
	 FROM News ORDER BY NewsId desc
  END

	
go
CREATE PROCEDURE Sel_NewsById
@NewsId		int 
AS BEGIN 
	 SELECT NewsId,Tittle,Picture,SubContent,NewsContent,DateCreation 
	 FROM News
	 WHERE NewsId=@NewsId 
  END 
go
CREATE PROCEDURE Sel_TopNews
AS BEGIN 
	 SELECT TOP(3) NewsId,Tittle,Picture,SubContent,NewsContent,DateCreation 
	 FROM News ORDER BY NewsId desc
		 
  END 
go

CREATE PROCEDURE Sel_StudentWorkByRollNumber
@RollNumber nvarchar(50)
AS BEGIN
SELECT     Student.StudentId, Student.RollNumber, Student.AccountId, Student.BatchId, StudentWork.StudentWorkId, StudentWork.AssignmentId, StudentWork.FileUpload, 
                      StudentWork.Mark, StudentWork.DateUpload
FROM         Student INNER JOIN
                      StudentWork ON Student.StudentId = StudentWork.StudentId
WHERE Student.RollNumber = @RollNumber
END

GO


CREATE PROCEDURE Sel_AssignmentsById
@AssignmentId		int 
AS BEGIN 
	 SELECT *
	 FROM Assignment
	 WHERE AssignmentId=@AssignmentId 
  END 

GO
CREATE PROCEDURE Sel_StudentById 
@StudentId		int
AS BEGIN 
SELECT     Account.AccountId, Account.RoleId, Account.UserName, Account.PassWord, Account.DateCreation, Account.FullName, Account.BirthDay, Account.Gender, 
                      Account.Phone, Account.Email, Account.Address, Student.StudentId, Student.RollNumber, Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId
	 WHERE StudentId=@StudentId 
  END
GO
CREATE PROCEDURE Sel_CourseById
@CourseId int
AS BEGIN 
SELECT * FROM Course
Where CourseId = @CourseId
END
GO

CREATE PROCEDURE Sel_SemesterById
@SemesterId int
AS BEGIN 
SELECT * FROM Semester
Where SemesterId = @SemesterId
END
GO
CREATE PROCEDURE Sel_AccountIsOnline
AS BEGIN
SELECT * FROM Account
WHERE IsOnline = 1 order by LastLogin desc
END
GO
CREATE PROCEDURE SetAccountOnline
@AccountId int,
@IsOnline BIT
AS BEGIN
UPDATE Account SET 
	IsOnline = @IsOnline,
	LastLogin = GETDATE()
WHERE AccountId = @AccountId
END
GO

CREATE PROCEDURE Sel_StudentWorks
AS BEGIN
SELECT * FROM StudentWork
END
GO
CREATE PROCEDURE Sel_StudentWorkByStudentId 
@StudentId int
AS BEGIN
SELECT * FROM StudentWork
 WHERE StudentId = @StudentId
END

GO

CREATE PROCEDURE Sel_StudentWorkById 
@StudentWorkId int
AS BEGIN
SELECT * FROM StudentWork
 WHERE StudentWorkId = @StudentWorkId
END
GO

CREATE PROCEDURE Sel_Students
AS BEGIN 
SELECT     Account.AccountId, Account.RoleId, Account.UserName, Account.PassWord, Account.DateCreation, Account.FullName, Account.BirthDay, Account.Gender, 
                      Account.Phone, Account.Email, Account.Address, Student.StudentId, Student.RollNumber, Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId
  END

GO

CREATE PROCEDURE Sel_StudentsByBatchId
@BatchId int
AS BEGIN 
SELECT     Account.AccountId, Account.RoleId, Account.UserName, Account.PassWord, Account.DateCreation, Account.FullName, Account.BirthDay, Account.Gender, 
                      Account.Phone, Account.Email, Account.Address, Student.StudentId, Student.RollNumber, Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId
WHERE Student.BatchId = @BatchId
  END



GO

CREATE PROCEDURE Sel_StudentByAccountId
@AccountId		int
AS BEGIN 
SELECT     Account.AccountId, Account.RoleId, Account.UserName, Account.PassWord, Account.DateCreation, Account.FullName, Account.BirthDay, Account.Gender, 
                      Account.Phone, Account.Email, Account.Address, Student.StudentId, Student.RollNumber, Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId
	 WHERE Student.AccountId=@AccountId 
  END
GO

CREATE PROCEDURE Sel_StudentsIsLock
AS BEGIN 
SELECT     Account.AccountId, Account.RoleId, Account.UserName, Account.PassWord, Account.DateCreation, Account.FullName, Account.BirthDay, Account.Gender, 
                      Account.Phone, Account.Email, Account.Address, Student.StudentId, Student.RollNumber, Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId
	 WHERE Account.AlowLogin=0 
  END
GO

CREATE PROCEDURE Sel_AccountById
@AccountId int
AS BEGIN
	SELECT * FROM Account
	WHERE AccountId = @AccountId
END
go


CREATE PROCEDURE Ins_StudentWork
@StudentId int,
@AssignmentId int ,
@FileUpload	nvarchar(255)
AS BEGIN 
     INSERT INTO StudentWork(StudentId,AssignmentId,FileUpload) 
     VALUES (@StudentId,@AssignmentId,@FileUpload) 
  END 

go

CREATE PROCEDURE updateAssignmentWork
@StudentId int,
@AssignmentId int ,
@FileUpload	nvarchar(255),
@DateUpload datetime
AS BEGIN 
     update StudentWork set FileUpload = @FileUpload ,DateUpload =@DateUpload 
     where StudentId = @StudentId and AssignmentId =@AssignmentId
  END 

go

CREATE PROCEDURE Sel_MyAssignment
@StudentId int,
@AssignmentId int
AS BEGIN
	SELECT * FROM StudentWork
	WHERE StudentId = @StudentId and AssignmentId = @AssignmentId
END
go




CREATE  PROCEDURE Sel_BatchsOfStaff
@StaffId int
AS BEGIN
SELECT     Batch.BatchName, Batch.StartDate, Staff.AccountId, StaffAndBatch.StaffAndBatchId, StaffAndBatch.StaffId, StaffAndBatch.BatchId
FROM         Batch INNER JOIN
                      StaffAndBatch ON Batch.BatchId = StaffAndBatch.BatchId INNER JOIN
                      Staff ON StaffAndBatch.StaffId = Staff.StaffId

where StaffAndBatch.StaffId = @StaffId
END
go

CREATE  PROCEDURE Sel_StaffByAccountId
@AccountId	int 
AS BEGIN 
	 SELECT Staff.StaffId, Account.* 
	 FROM Staff inner join Account on Staff.AccountId = Account.AccountId
	 WHERE Account.AccountId=@AccountId 
  END 
go

CREATE PROCEDURE Sel_StudentByAssignmentId
@AssignmentId int
AS BEGIN
SELECT     Student.StudentId, Student.RollNumber, Student.AccountId, Student.BatchId, StudentWork.StudentWorkId, StudentWork.AssignmentId, StudentWork.FileUpload, 
                      StudentWork.Mark, StudentWork.DateUpload
FROM         Student INNER JOIN
                      StudentWork ON Student.StudentId = StudentWork.StudentId
WHERE StudentWork.AssignmentId = @AssignmentId
END


---------------------------------------Proc Batch
go
CREATE PROCEDURE Sel_StudentForAddToBatch
AS BEGIN
SELECT     Account.AccountId, Account.RoleId, Account.FullName, Account.BirthDay, Account.Gender, Account.Phone, Account.Email, Account.Address, Student.StudentId, 
                      Student.RollNumber,  Account.DateCreation,Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId

where Student.BatchId IS NULL
order by Account.DateCreation desc
end
go


CREATE PROCEDURE Sel_AllBatch
AS BEGIN
select * from Batch
END

go
CREATE PROCEDURE Sel_AllStudentHaveBatch
AS BEGIN
SELECT     Account.AccountId, Account.RoleId, Account.FullName, Account.BirthDay, Account.Gender, Account.Phone, Account.Email, Account.Address, Student.StudentId, 
                      Student.RollNumber,  Account.DateCreation,Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId

where Student.BatchId is not NULL
order by Account.DateCreation desc
end

go

CREATE PROCEDURE Upd_BatchToStudent
@StudentId int,
@BatchId int
AS BEGIN 
     UPDATE Student SET 
	BatchId 	 = @BatchId
    WHERE StudentId=@StudentId 
  END 
GO

---------------------------------------Proc Batch



CREATE PROCEDURE Ins_ChangeLearning
@StudentId int,
@BatchId int ,
@Reason	ntext
AS BEGIN 
     INSERT INTO Changeleaning(StudentId,BatchId,Reason) 
     VALUES (@StudentId,@BatchId,@Reason) 
  END 
go
CREATE PROCEDURE Sel_Staffs
AS BEGIN 
SELECT     Account.*, Staff.StaffId
FROM         Account INNER JOIN
                      Staff ON Account.AccountId = Staff.AccountId
END
GO

CREATE PROCEDURE StaffStatistics
AS BEGIN 
DECLARE
	@TotalStaff int,
	@StaffHaveBatch int,
	@StaffHaveNotBatch int
		SET @TotalStaff = (select count(*) from Staff)
		SET @StaffHaveBatch = (select count(DISTINCT StaffId) from StaffAndBatch)
		SET @StaffHaveNotBatch = @TotalStaff - @StaffHaveBatch
		select 
			@TotalStaff as TotalStaff ,
			@StaffHaveBatch as StaffHaveBatch, 
			@StaffHaveNotBatch as StaffHaveNotBatch
END

--exec StaffStatistics

create PROCEDURE Sel_Statistics
AS BEGIN
	DECLARE
	@TotalStaff int,
	@StaffHaveBatch int,
	@StaffHaveNotBatch int,
	@AccountOnline  int,
	@TotalBatch     int
		SET @TotalStaff = (select count(*) from Staff)
		SET @StaffHaveBatch = (select count(DISTINCT StaffId) from StaffAndBatch)
		SET @StaffHaveNotBatch = @TotalStaff - @StaffHaveBatch
		SET @AccountOnline = (select count(*) from Account where isOnline = 1)
		SET @TotalBatch   = (select count(*) from batch)
		select 
			@TotalStaff as TotalStaff ,
			@StaffHaveBatch as StaffHaveBatch,
			@StaffHaveNotBatch as StaffHaveNotBatch,
			@AccountOnline as AccountOnline,
			@TotalBatch as TotalBatch
END
GO
CREATE PROCEDURE Sel_AllFAQ
AS BEGIN
select * from FAQ
END
GO

CREATE PROCEDURE Del_BatchByStaff
@StaffId int,
@BatchId int
AS BEGIN
delete StaffAndBatch where StaffId = @StaffId and BatchId = @BatchId
END


GO
CREATE PROCEDURE Ins_StaffAndBatch
@StaffId int,
@BatchId int
AS BEGIN
insert into StaffAndBatch(StaffId,BatchId) values(@StaffId, @BatchId)
select SCOPE_IDENTITY()
END


GO
CREATE PROCEDURE Sel_StudentWorksMarkUpdate
AS BEGIN
SELECT * FROM StudentWork
WHERE  Mark >0
ORDER BY DateUpload DESC
END


GO
CREATE PROCEDURE Sel_BatchNoStaff
@StaffId int
AS BEGIN
SELECT   Batch.*
FROM         Batch WHERE BatchId NOT IN( select BatchId From StaffAndBatch where StaffId = @StaffId)
END

GO
CREATE PROCEDURE SelectLatestAccountId
@AccountId	INT OUTPUT
AS BEGIN
   		SELECT 	@AccountId=ISNULL(MAX(AccountId),0) FROM Account
   END
GO
CREATE PROCEDURE Ins_Student
@UserName nvarchar(100),
@FullName nvarchar(100),
@BirthDay datetime,
@Gender BIT,
@Phone  nvarchar(50),
@Email  nvarchar(100),
@Address nvarchar(200),
@Output  int output,
@Result  int output
AS BEGIN
	DECLARE @RollNumber VARCHAR(6)
	DECLARE @NewUserName NVARCHAR(50)
	IF(NOT EXISTS(SELECT Email FROM Account WHERE Email=@Email))
		BEGIN	
			DECLARE @AccountId	INT
			DECLARE @IdentityId	nvarchar(10)
			EXEC SelectLatestAccountId @AccountId OUTPUT
			SET @IdentityId =(SELECT 'a'+RIGHT('00000'+CONVERT(NVARCHAR(5),(@AccountId +1)),5))
			SET @NewUserName = (@UserName + '_' + @IdentityId)
			INSERT INTO Account(RoleId,UserName,[Password],FullName,BirthDay,Gender,Phone,Email,Address)
			VALUES	(2,@NewUserName,@NewUserName,@FullName,@BirthDay,@Gender,@Phone,@Email,@Address)

			INSERT INTO Student(RollNumber, AccountId)
			VALUES	(@IdentityId,@AccountId +1)
			SET @Output = (SELECT ISNULL(MAX(StudentId),0) FROM Student)
			SET @Result = 1 --ok
		END
	ELSE
		BEGIN
			SET @Result = 2 -- Email da su dung
		END 
	END
GO
select * from account
select * from student
CREATE PROCEDURE SelectLatestAccount
AS BEGIN 
	select top(1) *  from Account order by AccountId desc
END

GO

CREATE PROCEDURE  Ins_FeedBack
@StudentId int, 
@StaffId int,
@FeedBackTitle nvarchar(100),
@FeedBackContent ntext
AS BEGIN
insert into FeedBack(StudentId, StaffId, FeedBackTitle, FeedBackContent) values(@StudentId,@StaffId,@FeedBackTitle,@FeedBackContent)
END

go
create proc Sel_AssignmentsByStaffId
@StaffId int
as
begin
	select * from Assignment where StaffId = @StaffId
end

go

CREATE PROCEDURE Ins_Batch
@CourseId int,
@SemesterId int,
@BatchName NVARCHAR(100),
@StartDate datetime
AS BEGIN
insert into Batch(CourseId,SemesterId,BatchName,StartDate)
values (@CourseId,@SemesterId,@BatchName,@StartDate)
END
GO
CREATE PROCEDURE Sel_AllCourse
AS BEGIN
select * from Course
END
GO
CREATE PROCEDURE Sel_AllSemester
AS BEGIN
select * from Semester
END
GO

CREATE PROCEDURE Ins_Assignment
@SubjectId		 INT,
@StaffId			 INT,
@BatchId			 INT,
@AssignmentName   NVARCHAR(100),
@AssignmentFile   NVARCHAR(255),
@AssignmentContent ntext,
@StartDate		datetime,
@EndDate		datetime
AS BEGIN
	insert into Assignment(SubjectId,StaffId,BatchId,AssignmentName,AssignmentFile,AssignmentContent,StartDate,EndDate)
	values(@SubjectId,@StaffId,@BatchId,@AssignmentName,@AssignmentFile,@AssignmentContent,@StartDate,@EndDate)
END
GO
CREATE PROCEDURE Upd_Assignment
@SubjectId		 INT,
@StaffId			 INT,
@BatchId			 INT,
@AssignmentName   NVARCHAR(100),
@AssignmentFile   NVARCHAR(255),
@AssignmentContent ntext,
@StartDate		datetime,
@EndDate		datetime,
@AssignmentId int
AS BEGIN
	Update Assignment 
SET SubjectId = @SubjectId,
StaffId = @StaffId,
BatchId = @BatchId,
AssignmentName = @AssignmentName,
AssignmentFile = @AssignmentFile,
AssignmentContent = @AssignmentContent,
StartDate = @StartDate,
EndDate = @EndDate
where AssignmentId = @AssignmentId
END
GO
CREATE PROCEDURE Del_Assignment
@AssignmentId int, 
@Result int output
AS BEGIN
	IF(NOT EXISTS(SELECT AssignmentId FROM StudentWork WHERE AssignmentId=@AssignmentId))
	BEGIN
		delete Assignment where AssignmentId = @AssignmentId
		SET @Result = 1 -- ok
	END
	ELSE
	BEGIN
		SET @Result = 2 -- ton tai StudentWork
	END
END
GO
CREATE PROCEDURE Ins_Subject
@Subjectname NVARCHAR(100)
AS BEGIN
	insert into Subject(Subjectname) values (@Subjectname)
END
GO
