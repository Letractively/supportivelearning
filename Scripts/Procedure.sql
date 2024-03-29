use SupportiveLearning
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsByBacthId' AND TYPE = 'P')
DROP PROC Sel_AssignmentsByBacthId
GO
create proc Sel_AssignmentsByBacthId
@BatchId int
as
begin
	select * from Assignment where BatchId = @BatchId
end

go
/* Create Procedure Sel_StaffById */
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StaffById' AND TYPE = 'P')
DROP PROC Sel_StaffById
GO

CREATE PROCEDURE Sel_StaffById
@StaffId		int 
AS BEGIN 
	 SELECT Staff.StaffId, Account.* 
	 FROM Staff inner join Account on Staff.AccountId = Account.AccountId
	 WHERE StaffId=@StaffId 
  END 

 GO 

/* Create Procedure Sel_RolesById */
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_RolesById' AND TYPE = 'P')
DROP PROC Sel_RolesById 
GO
CREATE PROCEDURE Sel_RolesById
@RoleId		int 
AS BEGIN 
	 SELECT RoleId,RoleName,Description 
	 FROM Roles
	 WHERE RoleId=@RoleId 
  END 

 GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_SubjectById' AND TYPE = 'P')
DROP PROC Sel_SubjectById
GO
CREATE PROCEDURE Sel_SubjectById
@SubjectId		int 
AS BEGIN 
	 SELECT SubjectId,SubjectName 
	 FROM Subject
	 WHERE SubjectId=@SubjectId 
  END 
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_BatchById' AND TYPE = 'P')
DROP PROC Sel_BatchById
GO
CREATE PROCEDURE Sel_BatchById
@BatchId int
AS BEGIN 
	 SELECT * 
	 FROM Batch
	 WHERE BatchId=@BatchId 
  END 
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_Feedbacks' AND TYPE = 'P')
DROP PROC Sel_Feedbacks
GO
CREATE PROCEDURE Sel_Feedbacks
AS BEGIN 
	 SELECT *
	 FROM FeedBack
  END
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AccountByUserNameAndPass' AND TYPE = 'P')
DROP PROC Sel_AccountByUserNameAndPass
GO
CREATE PROCEDURE Sel_AccountByUserNameAndPass
@UserName nvarchar(100),
@Password nvarchar(100)
AS BEGIN
	SELECT * FROM Account
	WHERE UserName = @UserName AND Password = @Password
END
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_News' AND TYPE = 'P')
DROP PROC Ins_News
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Upd_News' AND TYPE = 'P')
DROP PROC Upd_News
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Del_News' AND TYPE = 'P')
DROP PROC Del_News
GO
CREATE PROCEDURE Del_News 
@NewsId		int 
AS BEGIN 
     DELETE FROM News
     WHERE NewsId=@NewsId 
  END 

 GO 
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllNews' AND TYPE = 'P')
DROP PROC Sel_AllNews
GO 
CREATE PROCEDURE Sel_AllNews
AS BEGIN 
	 SELECT NewsId,Tittle,Picture,SubContent,NewsContent,DateCreation 
	 FROM News ORDER BY NewsId desc
  END

go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_NewsById' AND TYPE = 'P')
DROP PROC Sel_NewsById	
GO
CREATE PROCEDURE Sel_NewsById
@NewsId		int 
AS BEGIN 
	 SELECT NewsId,Tittle,Picture,SubContent,NewsContent,DateCreation 
	 FROM News
	 WHERE NewsId=@NewsId 
  END 
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_TopNews' AND TYPE = 'P')
DROP PROC Sel_TopNews
GO
CREATE PROCEDURE Sel_TopNews
AS BEGIN 
	 SELECT TOP(3) NewsId,Tittle,Picture,SubContent,NewsContent,DateCreation 
	 FROM News ORDER BY NewsId desc
		 
  END 
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentWorkByRollNumber' AND TYPE = 'P')
DROP PROC Sel_StudentWorkByRollNumber
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsById' AND TYPE = 'P')
DROP PROC Sel_AssignmentsById
GO
CREATE PROCEDURE Sel_AssignmentsById
@AssignmentId		int 
AS BEGIN 
	 SELECT *
	 FROM Assignment
	 WHERE AssignmentId=@AssignmentId 
  END 

GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentById' AND TYPE = 'P')
DROP PROC Sel_StudentById
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_CourseById' AND TYPE = 'P')
DROP PROC Sel_CourseById
GO
CREATE PROCEDURE Sel_CourseById
@CourseId int
AS BEGIN 
SELECT * FROM Course
Where CourseId = @CourseId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_SemesterById' AND TYPE = 'P')
DROP PROC Sel_SemesterById
GO
CREATE PROCEDURE Sel_SemesterById
@SemesterId int
AS BEGIN 
SELECT * FROM Semester
Where SemesterId = @SemesterId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AccountIsOnline' AND TYPE = 'P')
DROP PROC Sel_AccountIsOnline
GO
CREATE PROCEDURE Sel_AccountIsOnline
AS BEGIN
SELECT * FROM Account
WHERE IsOnline = 1 order by LastLogin desc
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'SetAccountOnline' AND TYPE = 'P')
DROP PROC SetAccountOnline
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentWorks' AND TYPE = 'P')
DROP PROC Sel_StudentWorks
GO
CREATE PROCEDURE Sel_StudentWorks
AS BEGIN
SELECT * FROM StudentWork
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentWorkByStudentId' AND TYPE = 'P')
DROP PROC Sel_StudentWorkByStudentId
GO
CREATE PROCEDURE Sel_StudentWorkByStudentId 
@StudentId int
AS BEGIN
SELECT * FROM StudentWork
 WHERE StudentId = @StudentId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentWorkById' AND TYPE = 'P')
DROP PROC Sel_StudentWorkById
GO
CREATE PROCEDURE Sel_StudentWorkById 
@StudentWorkId int
AS BEGIN
SELECT * FROM StudentWork
 WHERE StudentWorkId = @StudentWorkId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_Students' AND TYPE = 'P')
DROP PROC Sel_Students
GO
CREATE PROCEDURE Sel_Students
AS BEGIN 
SELECT     Account.AccountId, Account.RoleId, Account.UserName, Account.PassWord, Account.DateCreation, Account.FullName, Account.BirthDay, Account.Gender, 
                      Account.Phone, Account.Email, Account.Address, Student.StudentId, Student.RollNumber, Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId
  END

GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentsByBatchId' AND TYPE = 'P')
DROP PROC Sel_StudentsByBatchId
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentByAccountId' AND TYPE = 'P')
DROP PROC Sel_StudentByAccountId
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentsIsLock' AND TYPE = 'P')
DROP PROC Sel_StudentsIsLock
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AccountById' AND TYPE = 'P')
DROP PROC Sel_AccountById
GO
CREATE PROCEDURE Sel_AccountById
@AccountId int
AS BEGIN
	SELECT * FROM Account
	WHERE AccountId = @AccountId
END
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_StudentWork' AND TYPE = 'P')
DROP PROC Ins_StudentWork
GO
CREATE PROCEDURE Ins_StudentWork
@StudentId int,
@AssignmentId int ,
@FileUpload	nvarchar(255)
AS BEGIN 
     INSERT INTO StudentWork(StudentId,AssignmentId,FileUpload) 
     VALUES (@StudentId,@AssignmentId,@FileUpload) 
  END 
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'updateAssignmentWork' AND TYPE = 'P')
DROP PROC updateAssignmentWork
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_MyAssignment' AND TYPE = 'P')
DROP PROC Sel_MyAssignment
GO
CREATE PROCEDURE Sel_MyAssignment
@StudentId int,
@AssignmentId int
AS BEGIN
	SELECT * FROM StudentWork
	WHERE StudentId = @StudentId and AssignmentId = @AssignmentId
END
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_BatchsOfStaff' AND TYPE = 'P')
DROP PROC Sel_BatchsOfStaff
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StaffByAccountId' AND TYPE = 'P')
DROP PROC Sel_StaffByAccountId
GO
CREATE  PROCEDURE Sel_StaffByAccountId
@AccountId	int 
AS BEGIN 
	 SELECT Staff.StaffId, Account.* 
	 FROM Staff inner join Account on Staff.AccountId = Account.AccountId
	 WHERE Account.AccountId=@AccountId 
  END 
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentByAssignmentId' AND TYPE = 'P')
DROP PROC Sel_StudentByAssignmentId
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentForAddToBatch' AND TYPE = 'P')
DROP PROC Sel_StudentForAddToBatch
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllBatch' AND TYPE = 'P')
DROP PROC Sel_AllBatch
GO
CREATE PROCEDURE Sel_AllBatch
AS BEGIN
select * from Batch
END
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllStudentHaveBatch' AND TYPE = 'P')
DROP PROC Sel_AllStudentHaveBatch
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Upd_BatchToStudent' AND TYPE = 'P')
DROP PROC Upd_BatchToStudent
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_ChangeLearning' AND TYPE = 'P')
DROP PROC Ins_ChangeLearning
GO
CREATE PROCEDURE Ins_ChangeLearning
@StudentId int,
@BatchId int ,
@Reason	ntext
AS BEGIN 
     INSERT INTO Changeleaning(StudentId,BatchId,Reason) 
     VALUES (@StudentId,@BatchId,@Reason) 
  END 
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_Staffs' AND TYPE = 'P')
DROP PROC Sel_Staffs
GO
CREATE PROCEDURE Sel_Staffs
AS BEGIN 
SELECT     Account.*, Staff.StaffId
FROM         Account INNER JOIN
                      Staff ON Account.AccountId = Staff.AccountId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'StaffStatistics' AND TYPE = 'P')
DROP PROC StaffStatistics
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
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_Statistics' AND TYPE = 'P')
DROP PROC Sel_Statistics
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllFAQ' AND TYPE = 'P')
DROP PROC Sel_AllFAQ
GO
CREATE PROCEDURE Sel_AllFAQ
AS BEGIN
select * from FAQ
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Del_BatchByStaff' AND TYPE = 'P')
DROP PROC Del_BatchByStaff
GO
CREATE PROCEDURE Del_BatchByStaff
@StaffId int,
@BatchId int
AS BEGIN
delete StaffAndBatch where StaffId = @StaffId and BatchId = @BatchId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_StaffAndBatch' AND TYPE = 'P')
DROP PROC Ins_StaffAndBatch
GO
CREATE PROCEDURE Ins_StaffAndBatch
@StaffId int,
@BatchId int
AS BEGIN
insert into StaffAndBatch(StaffId,BatchId) values(@StaffId, @BatchId)
select SCOPE_IDENTITY()
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_StudentWorksMarkUpdate' AND TYPE = 'P')
DROP PROC Sel_StudentWorksMarkUpdate
GO
CREATE PROCEDURE Sel_StudentWorksMarkUpdate
AS BEGIN
SELECT * FROM StudentWork
WHERE  Mark >0
ORDER BY DateUpload DESC
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_BatchNoStaff' AND TYPE = 'P')
DROP PROC Sel_BatchNoStaff
GO
CREATE PROCEDURE Sel_BatchNoStaff
@StaffId int
AS BEGIN
SELECT   Batch.*
FROM         Batch WHERE BatchId NOT IN( select BatchId From StaffAndBatch where StaffId = @StaffId)
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'SelectLatestAccountId' AND TYPE = 'P')
DROP PROC SelectLatestAccountId
GO
CREATE PROCEDURE SelectLatestAccountId
@AccountId	INT OUTPUT
AS BEGIN
   		SELECT 	@AccountId=ISNULL(MAX(AccountId),0) FROM Account
   END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_Student' AND TYPE = 'P')
DROP PROC Ins_Student
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'SelectLatestAccount' AND TYPE = 'P')
DROP PROC SelectLatestAccount
GO
CREATE PROCEDURE SelectLatestAccount
AS BEGIN 
	select top(1) *  from Account order by AccountId desc
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_FeedBack' AND TYPE = 'P')
DROP PROC Ins_FeedBack
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsByStaffId' AND TYPE = 'P')
DROP PROC Sel_AssignmentsByStaffId
GO
create proc Sel_AssignmentsByStaffId
@StaffId int
as
begin
	select * from Assignment where StaffId = @StaffId
end
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_Batch' AND TYPE = 'P')
DROP PROC Ins_Batch
GO
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllCourse' AND TYPE = 'P')
DROP PROC Sel_AllCourse
GO
CREATE PROCEDURE Sel_AllCourse
AS BEGIN
select * from Course
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllSemester' AND TYPE = 'P')
DROP PROC Sel_AllSemester
GO
CREATE PROCEDURE Sel_AllSemester
AS BEGIN
select * from Semester
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_Assignment' AND TYPE = 'P')
DROP PROC Ins_Assignment
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Upd_Assignment' AND TYPE = 'P')
DROP PROC Upd_Assignment
GO
CREATE PROCEDURE Upd_Assignment
@AssignmentName   NVARCHAR(100),
@AssignmentFile   NVARCHAR(255),
@AssignmentContent ntext,
@StartDate datetime,
@EndDate datetime,
@AssignmentId int
AS BEGIN
Update Assignment 
SET AssignmentName = @AssignmentName,
AssignmentFile = @AssignmentFile,
AssignmentContent = @AssignmentContent,
StartDate = @StartDate,
EndDate = @EndDate
where AssignmentId = @AssignmentId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Del_Assignment' AND TYPE = 'P')
DROP PROC Del_Assignment
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
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_Subject' AND TYPE = 'P')
DROP PROC Ins_Subject
GO
CREATE PROCEDURE Ins_Subject
@Subjectname NVARCHAR(100)
AS BEGIN
	insert into Subject(Subjectname) values (@Subjectname)
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllSubject' AND TYPE = 'P')
DROP PROC Sel_AllSubject
GO
CREATE PROCEDURE Sel_AllSubject
AS BEGIN
	select * from Subject
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_ContactFeedbackForStudent' AND TYPE = 'P')
DROP PROC Sel_ContactFeedbackForStudent
GO
CREATE PROCEDURE Sel_ContactFeedbackForStudent
@StudentId int
AS BEGIN
	select DISTINCT StaffId from Feedback where StudentId = @StudentId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_FeedbacksForStudent' AND TYPE = 'P')
DROP PROC Sel_FeedbacksForStudent
GO
CREATE PROCEDURE Sel_FeedbacksForStudent
@StudentId int,
@StaffId int
AS BEGIN
	select * from Feedback where StudentId = @StudentId and StaffId = @StaffId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_FeedbackAnswerByFeedbackId' AND TYPE = 'P')
DROP PROC Sel_FeedbackAnswerByFeedbackId
GO
CREATE PROCEDURE Sel_FeedbackAnswerByFeedbackId
@FeedbackId int
AS BEGIN
	select * from FeedbackAnswer where FeedbackId = @FeedbackId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_FeedBackById' AND TYPE = 'P')
DROP PROC Sel_FeedBackById
GO
CREATE PROCEDURE Sel_FeedBackById
@FeedbackId int
AS BEGIN
	select * from Feedback where FeedbackId = @FeedbackId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_TopFeedbacksForStaff' AND TYPE = 'P')
DROP PROC Sel_TopFeedbacksForStaff
GO
CREATE PROCEDURE Sel_TopFeedbacksForStaff
@StaffId int
AS BEGIN
select top(5) * from Feedback where StaffId = @StaffId and
	FeedbackId NOT IN( select FeedbackId From FeedbackAnswer)
 order by FeedbackId desc
END
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_FeedbacksForStaff' AND TYPE = 'P')
DROP PROC Sel_FeedbacksForStaff
GO
CREATE PROCEDURE Sel_FeedbacksForStaff
@StaffId int
AS BEGIN
select * from Feedback where StaffId = @StaffId order by FeedbackId desc
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_FeedBackAnswer' AND TYPE = 'P')
DROP PROC Ins_FeedBackAnswer
GO
CREATE PROCEDURE Ins_FeedBackAnswer
@FeedBackId int,
@FeedBackAnswer ntext
AS BEGIN
insert into FeedBackAnswer(FeedBackId,FeedBackAnswer)
values (@FeedBackId,@FeedBackAnswer)
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_Staff' AND TYPE = 'P')
DROP PROC Ins_Staff
GO
CREATE PROCEDURE Ins_Staff
@UserName nvarchar(100),
@Password nvarchar(100),
@FullName nvarchar(100),
@BirthDay datetime,
@Gender BIT,
@Phone  nvarchar(50),
@Email  nvarchar(100),
@Address nvarchar(200),
@Result  int output
AS BEGIN
	IF(NOT EXISTS(SELECT Email FROM Account WHERE Email=@Email))
	BEGIN
		IF(NOT EXISTS(SELECT UserName FROM Account WHERE UserName=@UserName))
		BEGIN	
			DECLARE @AccountId	INT
			DECLARE @IdentityId	nvarchar(10)
			INSERT INTO Account(RoleId,UserName,[Password],FullName,BirthDay,Gender,Phone,Email,Address)
			VALUES	(3,@UserName,@Password,@FullName,@BirthDay,@Gender,@Phone,@Email,@Address)
			EXEC SelectLatestAccountId @AccountId OUTPUT

			INSERT INTO Staff(AccountId)
			VALUES	(@AccountId)
			SET @Result = 1 --ok
		END
		ELSE
		BEGIN
			SET @Result = 3 -- Username da su dung
		END 
	END
	ELSE
		BEGIN
			SET @Result = 2 -- Email da su dung
		END 
	END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Ins_FAQ' AND TYPE = 'P')
DROP PROC Ins_FAQ
GO
CREATE PROCEDURE Ins_FAQ
@Quesion ntext,
@Answer ntext
AS BEGIN
insert into FAQ(Quesion,Answer) values(@Quesion,@Answer)
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Udp_FAQById' AND TYPE = 'P')
DROP PROC Udp_FAQById
GO
CREATE PROCEDURE Udp_FAQById
@FAQId int,
@Quesion ntext,
@Answer ntext
AS BEGIN
Update FAQ SET Quesion = @Quesion, Answer = @Answer
WHERE FAQId = @FAQId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Del_FAQById' AND TYPE = 'P')
DROP PROC Del_FAQById
GO
CREATE PROCEDURE Del_FAQById
@FAQId int
AS BEGIN
delete FAQ WHERE FAQId = @FAQId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Upd_Mark' AND TYPE = 'P')
DROP PROC Upd_Mark
GO
CREATE PROCEDURE Upd_Mark
@StudentWorkId		 INT,
@Mark             float
AS BEGIN
	Update StudentWork 
SET Mark = @Mark
where @StudentWorkId = StudentWorkId
END
GO
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllStudentOfMyBatchs' AND TYPE = 'P')
DROP PROC Sel_AllStudentOfMyBatchs
GO
CREATE PROCEDURE Sel_AllStudentOfMyBatchs
@StaffId INT
AS BEGIN
SELECT     StaffAndBatch.*,StudentWork.*
FROM         Batch INNER JOIN
                      StaffAndBatch ON Batch.BatchId = StaffAndBatch.BatchId INNER JOIN
                      Student ON Batch.BatchId = Student.BatchId INNER JOIN
                      StudentWork ON Student.StudentId = StudentWork.StudentId
where StaffAndBatch.StaffId = @StaffId
end
go

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllAssignments' AND TYPE = 'P')
DROP PROC Sel_AllAssignments
GO
create proc Sel_AllAssignments
as
begin
	select * from Assignment
end

GO 

select * from staff

go

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllStudent' AND TYPE = 'P')
DROP PROC Sel_AllStudent
GO
CREATE PROCEDURE Sel_AllStudent
AS BEGIN
SELECT     Account.AccountId, Account.RoleId, Account.FullName, Account.BirthDay, Account.Gender, Account.Phone, Account.Email, Account.Address, Student.StudentId, 
                      Student.RollNumber,  Account.DateCreation,Student.BatchId
FROM         Account INNER JOIN
                      Student ON Account.AccountId = Student.AccountId
order by Student.BatchId
end
go


IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Udp_StudentById' AND TYPE = 'P')
DROP PROC Udp_StudentById
GO
CREATE PROCEDURE Udp_StudentById
@FullName nvarchar(100),
@BirthDay datetime,
@Gender BIT,
@Phone  nvarchar(50),
@Email  nvarchar(100),
@Address nvarchar(200),
@AccountId  int
AS BEGIN
UPDATE Account set FullName = @FullName,BirthDay = @BirthDay ,Gender = @Gender,
Phone = @Phone, Email= @Email,Address = @Address
WHERE  AccountId = @AccountId
end
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsByBacthIdDueDate' AND TYPE = 'P')
DROP PROC Sel_AssignmentsByBacthIdDueDate
GO
create proc Sel_AssignmentsByBacthIdDueDate
@BatchId int
as
begin
	select * from Assignment 
where BatchId = @BatchId and DATEADD(d, 0, DATEDIFF(d, 0, Assignment.EndDate)) >= DATEADD(d, 0, DATEDIFF(d, 0, getdate()))
end


go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsByBacthIdOld' AND TYPE = 'P')
DROP PROC Sel_AssignmentsByBacthIdOld
GO
create proc Sel_AssignmentsByBacthIdOld
@BatchId int
as
begin
	select * from Assignment 
where BatchId = @BatchId and DATEADD(d, 0, DATEDIFF(d, 0, Assignment.EndDate)) < DATEADD(d, 0, DATEDIFF(d, 0, getdate()))
end

go

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'CheckMarkToUpload' AND TYPE = 'P')
DROP PROC CheckMarkToUpload
GO
CREATE PROCEDURE CheckMarkToUpload 
@StudentId int,
@AssignmentId int
AS BEGIN
SELECT * FROM StudentWork
 WHERE StudentId = @StudentId and AssignmentId = @AssignmentId and Mark is null
END

go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsDueDate' AND TYPE = 'P')
DROP PROC Sel_AssignmentsDueDate
GO
create proc Sel_AssignmentsDueDate
@StaffId int,
@BatchId int
as
begin
	select * from Assignment 
where StaffId = @StaffId and BatchId = @BatchId and  DATEADD(d, 0, DATEDIFF(d, 0, Assignment.EndDate)) >= DATEADD(d, 0, DATEDIFF(d, 0, getdate()))
end


go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsOld' AND TYPE = 'P')
DROP PROC Sel_AssignmentsOld
GO
create proc Sel_AssignmentsOld
@StaffId int,
@BatchId int
as
begin
	select * from Assignment 
where StaffId = @StaffId and BatchId = @BatchId  and  DATEADD(d, 0, DATEDIFF(d, 0, Assignment.EndDate)) < DATEADD(d, 0, DATEDIFF(d, 0, getdate()))
end


go
--IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AssignmentsOld' AND TYPE = 'P')
--DROP PROC Sel_AssignmentsOld
--GO
--create proc Sel_AssignmentsOld
--@StaffId int,
--@BatchId int
--as
--begin
--select BatchId from Batch where BatchId not in (select BatchId from StaffAndBatch)
--end
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AccountsToProcess' AND TYPE = 'P')
DROP PROC Sel_AccountsToProcess
GO
create proc Sel_AccountsToProcess
@RoleId int,
@AllowLogin bit
as
begin
select * from dbo.Account where RoleId = @RoleId and AlowLogin = @AllowLogin
end
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'LockAccount' AND TYPE = 'P')
DROP PROC LockAccount
GO
create proc LockAccount
@AccountId int,
@AllowLogin bit
as
begin
update Account set AlowLogin = @AllowLogin where AccountId = @AccountId
end
go

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllAssignmentNotUse' AND TYPE = 'P')
DROP PROC Sel_AllAssignmentNotUse
GO
CREATE PROCEDURE Sel_AllAssignmentNotUse
@BatchId int
AS BEGIN
SELECT   Assignment.*
FROM         Assignment 
WHERE BatchId = @BatchId and AssignmentId not IN( select AssignmentId From StudentWork)
END
go
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'Sel_AllAssignmentsWork' AND TYPE = 'P')
DROP PROC Sel_AllAssignmentsWork
GO
CREATE PROCEDURE Sel_AllAssignmentsWork
@BatchId int
AS BEGIN
SELECT   Assignment.*
FROM         Assignment 
WHERE BatchId = @BatchId and AssignmentId  IN( select AssignmentId From StudentWork)
END
go