use SupportiveLearning
Go
--NewsCategory:
--insert into Newscategories values(N'Tin Tức & Sự Kiện', 'Các tin tức và sự kiện của School')
--go
--
--insert into Newscategories values(N'Giáo Dục Và Đào Tạo', 'Các tin tức cách giáo dục và đào tạo tại School')
--go
--
--insert into Newscategories values(N'Công nghệ thông tin', 'Nói về các công nghệ mới và các thông tin về CNTT quan trọng cho Sinh Viên')
--go

--News:
insert into News values( N'Phát Triển Ứng Dụng Android', 'NoImage.gif', N'Giới thiệu Trước khi nói đến Android, khi nhắc đến các nền tảng phát triển ứng dụng cho thiết bị di động...',
 'Giới thiệu Trước khi nói đến Android, khi nhắc đến các nền tảng phát triển ứng dụng cho thiết bị di động người ta thường nói đến Symbian, iPhone, Windows Mobile, BlackBerry, JavaME, LiMo v.v.. Vậy câu hỏi đầu tiên mà người làm công nghệ thường đặt... 
  Giới thiệu
Trước khi nói đến Android, khi nhắc đến các nền tảng phát triển ứng dụng cho thiết bị di động người ta thường nói đến Symbian, iPhone, Windows Mobile, BlackBerry, JavaME, LiMo v.v.. Vậy câu hỏi đầu tiên mà người làm công nghệ thường đặt ra là: Tại sao phải cần có thêm một nền tảng di động mới? Câu trả lời đôi khi lại là một câu hỏi khác: Điều gì tạo nên sự khác biệt cho Android?
Buổi thảo luận dành cho tất cả những bạn đam mê lập trình cho thiết bị di động đã có kinh nghiệm hoặc chưa từng làm việc, nghiên cứu về những công nghệ này, qua đó hy vọng sẽ giúp các bạn có cái nhìn rõ hơn về lĩnh vực phát triển ứng dụng trên thiết bị di động nói chung và nền tảng di động Android nói riêng.
Nội dung:
         Khám phá thế giới lập trình ứng dụng di động với Android
         Điều gì làm nên sự khác biệt cho Android?
         Làm thế nào để viết ứng dụng trên Android?
         Khai thác sức mạnh di động trên Android.', getdate())


insert into News values( N'Định Hướng Công Nghệ Cho Sinh Viên Công Nghệ Thông Tin', 'images/news/dinhhuong.jpg',N'FPT-Aptech là đơn vị đào tại CNTT Số 1 Việt Nam đã được khẳng định qua giải thưởng ...',
N'Nhằm định hướng công nghệ, giúp các bạn sinh viên CNTT tại các trường Đại học tại Hà Nội có cái nhìn cụ thể về các công nghệ nền tảng như công nghệ phần mềm, công nghệ Java và công nghệ .NET trong giai đoạn hiện nay, tạo cơ sở để sinh viên CNTT tại các trường ĐH lựa chọn hướng đi và nghề nghiệp tương lai trong lĩnh vực CNTT, FPT-Aptech tổ chức khóa học “Định hướng công nghệ-Technology Orientation” miễn phí.
 Khóa học được thiết kế bởi các giảng viên FPT-Aptech đã có nhiều năm kinh nghiệm giảng dạy, làm dự án tại các công ty phần mềm trong và ngoài nước. Bên cạnh phần lý thuyết còn có các phần thực hành, chia sẻ kinh nghiệm thực tế, làm bài kiểm tra, hỏi-đáp, tư vấn nghề nghiệp…Sinh viên tham gia khóa học còn có cơ hội nhận điện thoại may mắn từ chương trình bốc thăm trúng thưởng của FPT-Aptech. Kết thúc khóa học, sinh viên được cấp chứng chỉ khóa học của FPT-Aptech. Đây thực sự là khóa học bổ ích và là cơ hội đặc biệt dành cho các sinh viên CNTT.
', getdate())

insert into News values( N'Khởi Động Chương Trình Hướng Nghiệp Cho Học Sinh THPT', 'images/news/HocSinh.jpg', N'Chương trình hướng nghiệp 2010 cho học sinh 16 trường PTTH trên địa bàn Hà Nội do FPT-Aptech phối hợp...',
N'Chương trình hướng nghiệp 2010 cho học sinh PTTH gồm các nội dung chính như tham quan, giao lưu và  tìm hiểu về mô hình đào tạo Lập trình viên Quốc tế tại 3 cơ sở đào tạo của FPT-Aptech và mô hình việc làm của Lập trình viên tại các doanh nghiệp phần mềm tại Hà Nội. Chương trình nhằm giúp các bạn học sinh PTTH có cái nhìn thực tế về nghề lập trình cũng như ngành phần mềm, một trong những ngành đang phát triển và thu hút nhân lực hiện nay.
Chương trình đầu tiên đã nhận được sự hưởng ứng và tham gia nhiệt tình của 50 học sinh, thầy cô giáo và phụ huynh học sinh trường PTTH chuyên ĐH Sư Phạm, trường PTTH Hà Nội Amsterdam, THPT Lomonoxop. Chuỗi chương trình hướng nghiệp tiếp theo sẽ được tổ chức cho học sinh các trường PTTH như Việt Đức, Trương Định, Việt Nam-Ba Lan, Trần Nhân Tông, Lê Quý Đôn, Đống Đa, Yên Hòa, Nguyễn Trãi, Trần Phú, Nguyễn Trường Tộ, Việt Nam -Angeri, Lý Thường Kiệt…', getdate())


insert into News values( N'IBM sắp ra mắt siêu máy tính nhanh nhất mọi thời đại', 'images/news/IBM.jpg', N'IBM tuyên bố sẽ cho ra mắt một siêu máy tính mới có tốc độ nhanh nhất trong lịch sử với tốc độ xử lý..',
'Nhiều khả năng xử lý này vượt mặt tất cả các siêu máy tính đang có trên thế giới và "sức mạnh" của nó bằng 2 triệu chiếc laptop cộng lại. IBM hiện đang xúc tiến nhanh chóng phát triển hoàn thiện những khâu cuối cùng cho siêu máy tính thế hệ mới có tên Sequoia với sự hỗ trợ rất lớn từ chính phủ Mỹ, hệ thống hiện được đắt tại trung tâm nghiên cứu Lawrence Berkeley National Laboratory (Mỹ). Dự kiến siêu máy tính hàng “khủng” Sequoia sẽ chính thức đi vào hoạt động vào khoảng 2012.
Theo tiết lộ từ phía IBM cho biết Sequoia sẽ “ngốn” khoảng 1,6 tỷ bộ vi xử lý, nhiều cổng RAM với mỗi cổng có dung lượng lên đến 1,6 Terabyte. Tuy nhiên, IBM không tiết lộ mỗi bộ vi xử lý sẽ có bao nhiêu nhân và chi phí phát triển.
Sequoia chính thức đi vào hoạt động sẽ là một bước tiến mới trong lịch sử các siêu máy tính trên thế giới với vị trí đứng đầu trong gần 500 siêu máy tính có mặt ở khắp thế giới.
Theo đánh giá từ phía các chuyên gia, sự kiện Sequoia không chỉ có ý nghĩa về mặt công nghệ mà còn vô cùng hữu ích trong công tác dự báo biến đổi khí hậu toàn cầu như hiệu ứng nhà kính hay dự báo động đất sẽ chính xác hơn 40 - 50 lần so với hiện tại.', getdate())

insert into News values( N'Gia Công CNTT Miễn Nhiễm Với Khủng Hoảng', 'images/news/giacongIT.jpg', 'Cuộc khủng hoảng tài chính toàn cầu đang “bóp nghẹt” hoạt động của nhiều doanh nghiệp nhưng lại....',
'Cuộc khủng hoảng tài chính và suy thoái kinh tế toàn cầu đã và đang ảnh hưởng không nhỏ đến hoạt động của các doanh nghiệp CNTT. Một loạt các biện pháp đối phó khẩn cấp đã được đưa ra như cắt giảm nhân sự, tiết kiệm chi tiêu. Nhưng điều đáng chú ý là hầu hết các doanh nghiệp chỉ cắt giảm các chi phí và hoạt động trực tiếp, chỉ có một số rất nhỏ các doanh nghiệp tuyên bố cắt giảm quy mô của các hoạt động thuê ngoài và gia công (outsourcing). Nguyên nhân vì đâu?
Kết quả khảo sát 258 doanh nghiệp trong danh sách Global 2000 (2000 doanh nghiệp CNTT lớn nhất toàn cầu) do hãng Forrester Research vừa thực hiện đã cho thấy trong khi có đến 46% doanh nghiệp tuyên bố cắt giảm ngân sách cho CNTT thì chỉ có 21% doanh nghiệp tuyên bố cắt giảm chi tiêu cho dịch vụ CNTT. "Điều đáng giá nhất của một dịch vụ CNTT tốt là nó sẽ cho phép các doanh nghiệp hạ thấp chi phí, cải thiện các quá trình xử lý công việc và giúp cho các hoạt động sản xuất kinh doanh được trơn tru trong bất kỳ hoàn cảnh nào", Paul Roehrig - chuyên viên phân tích của Forrester phát biểu.
Điều này đồng nghĩa với việc hầu hết các lãnh đạo sẽ tiếp tục đầu tư vào lĩnh vực outsourcing song song với việc cắt giảm chi phí, thậm chí họ còn mở rộng hơn nữa quy mô của lĩnh vực này nhằm duy trì tốc độ tăng trưởng của doanh nghiệp mà không phải đầu tư thêm vốn hay tốn kém thêm ngân sách cho việc đầu tư các công nghệ mới. "Trên quy mô doanh nghiệp, trong những tháng sắp tới chúng ta sẽ được chứng kiến một nghịch lý: Tổng chi tiêu cho doanh nghiệp sẽ giảm trong khi chi tiêu cho lĩnh vực outsourcing lại tăng lên", Roehrig nói.
Theo một báo cáo khác của hãng chuyên tư vấn trong lĩnh vực gia công phần mềm TPI, số lượng các hợp đồng gia công trên toàn thế giới đến thời điểm này đã tăng khoảng 5%  so với năm 2007 nhưng tổng giá trị của các hợp đồng này lại tăng tới 19%.  TPI dự tính, giá trị của thị trường gia công phần mềm toàn cầu trong năm 2008 sẽ đạt khoảng 88 tỷ USD, tăng 10% so với năm 2007. Đặc biệt giá trị của nhóm gia công các dịch vụ kinh doanh sẽ tăng khoảng 14% lên 22 tỷ USD.
"Quan điểm của chúng tôi là viễn cảnh của ngành này trong năm 2009 sẽ tương tự như năm 2008", Brian Smith - Giám đốc điều hành chi nhánh Bắc Mỹ của TPI phát biểu.
Tuy vậy, điều này không có nghĩa là lĩnh vực gia công và dịch vụ CNTT sẽ không có bất kỳ sự thay đổi nào trong năm tới. "Các bản hợp đồng sẽ vẫn được ký kết nhưng chúng sẽ không được tiến hành giống như bình thường", chuyên gia Roehrig của Forrester nói, "Các công đoạn hay lĩnh vực sẽ được lựa chọn kỹ lưỡng hơn trước khi chuyển sang cho các đối tác gia công". Còn David Etzler - Tổng giám đốc của OutsourceWorld đã đưa ra nhận định của mình trong Hội nghị thường niên của Hiệp hội các doanh nghiệp gia công phần mềm rằng hoạt động này sẽ "náo nhiệt" hơn trong năm tới nên quy mô của các bản hợp đồng sẽ thay đổi. Qua quá trình trao đổi với các Giám đốc Công nghệ Thông tin (CIO), David Etzler nhận thấy rằng hầu hết các lãnh đạo đều có xu hướng phân nhỏ các hợp đồng cho nhiều nhà thầu khác nhau để tránh rủi ro đồng thời tận dụng một cách tối đa sở trường của từng nhà thầu trong từng công đoạn khác nhau.
Lợi ích quan trọng nhất của việc chia nhỏ hợp đồng này là các doanh nghiệp sẽ có cơ hội thương lượng riêng với từng nhà thầu để đạt được một thỏa thuận có lợi nhất cho họ. "Các lãnh đạo hiểu rằng họ đang phải đối mặt với một cuộc khủng hoảng tồi tệ nhất từ thời kỳ Đại khủng hoảng (1929) đến nay nên nếu có cơ hội để giúp cho doanh nghiệp của họ giảm thiểu chi phí và tồn tại qua được giai đoạn này, họ sẽ làm tất cả để đạt được mục đích", chuyên gia Roehrig kết luận.', getdate())

Go

insert into Roles values('Admin','admin')
insert into Roles values('Student','student')
insert into Roles values('Staff','staff')

Go

insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(1,'admin1','admin1','6/5/2009',N'Nguyen Van A','10/10/1982',1,'0983031283','nampx153@gmail.com','142 TS')
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(1,'admin2','admin2','7/8/2009',N'nguyenvaa b','5/5/1980',0,'0982323242','admin2@yahoo.com','123 ST')
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(1,'admin3','admin3','9/9/2009',N'tran anc','6/6/1975',1,'0941311333','admin3@yahoo.com','455 ABC')
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(1,'admin4','admin4','10/11/2009',N'tuan van','5/9/1981',1,'0938348937','admin4@gmail.com','adasd23')

insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(3,'nguyenstaff','staff001','1/1/2010',N'nguyen sinh','4/6/1980',0,'0987654678','nguyen001@gmail.com','nguyen23')
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(3,'transtaff','staff002','5/1/2010',N'tran quan','4/7/1982',1,'0986736452','tran002@gmail.com','tran2328')
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(3,'phamstaff','staff003','10/1/2010',N'pham dang','6/5/1978',1,'0987364756','pham003@gmail.com','pham23523')
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(3,'duongstaff','staff004','9/5/2010',N'Duong Vu','10/10/1981',1,'09837463746','duong004@gmail.com','duong23837')
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address) values(3,'leanhstaff','staff005','10/9/2010',N'Le Anh','8/6/1980',0,'0985746894','leanh005','leanh23746')

insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'tunv001','tu12345','1/1/2010',N'Nguyen Van Tu','2/2/1985',1,'0995737463','tunv001@gmail.com','tusdsd2',1)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'huong002','huong12345','2/5/2010',N'Nguyen Thi Huong','3/2/1985',0,'0984736453','huong002@gmail.com','huong387',1)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'hang003','hang12345','2/4/2010',N'Huong Hai Hang','5/4/1984',1,'0984756321','hang003@gmail.com','hang3847',1)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'dinh004','dinh12345','2/5/2010',N'Duong Van Dinh','8/3/1983',1,'0984756374','dinh004@gmail.com','dinh938',1)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'hieu005','hieu12345','5/5/2010',N'Tran Trung Hieu','6/5/1987',1,'0985798403','hieu005@gmail.com','hieu038',1)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'tuyen006','hieu12345','6/7/2010',N'Phan Van Tuyen','9/8/1986',1,'09485784756','tuyen006@gmail.com','tuyen4847',1)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'havt007','ha12345','6/9/2010',N'Vu Thach Ha','7/4/1988',0,'09485798748','havt007@gmail.com','havt2387',1)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'tuan008','tuan12345','8/9/2010',N'Van Tuan','4/8/1990',1,'09384709834','tuan008@gmail.com','tuan938',0)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'nam009','nam12345','10/10/2010',N'Pham Xuan Nam','10/2/1985',1,'0938475849','nam009@gmail.com','nam387',0)
insert into Account(RoleId, UserName, PassWord, DateCreation, FullName, BirthDay, Gender, Phone, Email, Address, AlowLogin) values(2,'anh010','anh12345','11/11/2010',N'Le Hoang Anh','4/9/1986',0,'0984734857','anh010@gmail.com','anh3837',0)

Go

insert into FAQ values(N'How to check the assignments? ',N'When you login in with username and password, the screen home page choose your class. Then you must upload assig, we will report success or error uploading','1/1/2010')
insert into FAQ values(N'How to download the assignment? ',N'When you login in with username and password, the screen home page choose your class. Here you will see Assignment document, click on view or download documents','1/2/2010')
insert into FAQ values(N'How to submit the assignment? ',N'Each Assignment will start and end dates. Assignment files you have uploaded, if the term you will not upload.','4/4/2010')
insert into FAQ values(N'How to check the marks? ',N'On the home page click on view mark, students then enter code. Click view mark, will display your mark Assignment.','5/6/2010')
insert into FAQ values(N'How to post a Query? ',N'Each Assignment will start and end dates. On the Feedback/Post a Query page, the students should be able to post their feedback or their queries. The queries thus posted will then be answered by the staff.','7/8/2010')

Go

insert into Semester(SemesterName) values('Semester1')
insert into Semester(SemesterName) values('Semester2')
insert into Semester(SemesterName) values('Semester3')
insert into Semester(SemesterName) values('Semester4')

Go

insert into dbo.Subject values('EJB')
insert into dbo.Subject values('AJAVA')
insert into dbo.Subject values('Csharp')
insert into dbo.Subject values('HTML')
insert into dbo.Subject values('SQL')

Go

insert into dbo.Course values ('2001','9/5/2009','3/5/2010')
insert into dbo.Course values ('2001','10/10/2009','4/10/2010')
insert into dbo.Course values ('2002','4/5/2009','10/5/2010')
insert into dbo.Course values ('2002','5/10/2010','11/10/2010')

Go

insert into dbo.Admin values(1)
insert into dbo.Admin values(2)
insert into dbo.Admin values(3)
insert into dbo.Admin values(4)

Go 

insert into dbo.Staff values(5)
insert into dbo.Staff values(6)
insert into dbo.Staff values(7)
insert into dbo.Staff values(8)
insert into dbo.Staff values(9)

Go

insert into dbo.Batch values(1,1,'T09384G','10/5/2009')
insert into dbo.Batch values(1,2,'T09334','10/5/2009')
insert into dbo.Batch values(1,3,'C09384G','10/5/2009')
insert into dbo.Batch values(1,4,'C09384','10/5/2009')



Go

insert into dbo.Student values('aa034',10,1)
insert into dbo.Student values('aa02394',11,2)
insert into dbo.Student values('aa0394',12,3)
insert into dbo.Student values('aa05334',13,4)
insert into dbo.Student values('aa035',14,1)
insert into dbo.Student values('aa03344',15,2)
insert into dbo.Student values('aa03534',16,3)
insert into dbo.Student values('aa039644',17,4)
insert into dbo.Student(RollNumber,AccountId) values('aa03934',17)
insert into dbo.Student(RollNumber,AccountId) values('aa039534',19)

Go

insert into dbo.FeedBack values(1,1,'EJB','abchdhe','11/5/2010')
insert into dbo.FeedBack values(2,2,'adasd','asdasd','11/6/2010')
insert into dbo.FeedBack values(3,2,'dasda','dadada','11/10/2010')
insert into dbo.FeedBack values(4,2,'asdasd','323ses','11/11/2010')
insert into dbo.FeedBack values(5,1,'sdsd','sdsada','11/20/2010')
insert into dbo.FeedBack values(6,3,'sdsds','sdsdsd','11/25/2010')

Go

insert into dbo.FeedBackAnswer values(1,'dasda','12/3/2010')
insert into dbo.FeedBackAnswer values(2,'asdasda','12/5/2010')
insert into dbo.FeedBackAnswer values(3,'asdadasd','12/5/2010')

Go

insert into dbo.Assignment(SubjectId,StaffId,BatchId,AssignmentName,AssignmentFile,AssignmentContent,StartDate,EndDate) values(1,1,1,'IXJ assignment','documents/assignmentFiles/IXJ assignment.doc',N'Write a laptop online selling website
The functional requirements:
 There ShoppingCart
 Using XML to store information about the product. Do not use a database.
 Allow import data into the input is an xml file
 Validate xml structure based on the schema before importing
 Allows users to search for products through product name. From the search results may add products to cart
 Use one of the Framework: JSF, Wicket, Spring
','12/3/2010','12/6/2010')
insert into dbo.Assignment(SubjectId,StaffId,BatchId,AssignmentName,AssignmentFile,AssignmentContent,StartDate,EndDate)  values(2,2,2,'PWSJ Assignmentsd','documents/assignmentFiles/PWSJ Assignmentsd.doc',N'Create registration form
When choosing a display register contents
List all employees when choosing display all the registered Employee.
Requirements:
• The registration functions, to display and access the database using WebService
• Use or PrimeFaces Icefaces
• Using facelets
• To validate the data: name required, dated no more than the current date
• Use Hibernate (2 points)
• Use the Unit 2 test','12/5/2010','12/9/2010')
insert into dbo.Assignment(SubjectId,StaffId,BatchId,AssignmentName,AssignmentFile,AssignmentContent,StartDate,EndDate)  values(1,1,1,'EJB assignment','documents/assignmentFiles/EJB assignment.doc',N'Write a laptop online selling website
The functional requirements:
 There ShoppingCart
 Add new, update, delete, Category, Product
 Allows users to search for products through product name. From the search results may add products to cart
 Use one of the Framework: JSF + PrimeFaces, Wicket, Spring ...
 Using EJB to perform persistent, use transaction (the attributes Required, Mandatory ...)','9/5/2010','9/9/2010')
insert into dbo.Assignment(SubjectId,StaffId,BatchId,AssignmentName,AssignmentFile,AssignmentContent,StartDate,EndDate)  values(2,2,2,'JSF-Icefaces-Assignment',' documents/assignmentFiles/JSF-Icefaces-Assignment.pdf',N'Write a program that allows for orders
When users enter the product name, the program will display hints
When users enter the date, day of the date must be greater than current date
When users click the Order button displays results','9/6/2010','9/9/2010')


Go

insert into dbo.StudentWork values(1,1,'sdsa',15,'12/4/2010')
insert into dbo.StudentWork values(2,1,'asdas',16,'12/5/2010')
insert into dbo.StudentWork values(3,2,'asdasd',17,'12/7/2010')
insert into dbo.StudentWork values(4,2,'asdas',20,'12/8/2010')
insert into dbo.StudentWork values(5,2,'adasd',9,'12/9/2010')

Go

insert into StaffAndBatch(StaffId,BatchId) values(1,1)
insert into StaffAndBatch(StaffId,BatchId) values(2,2)
insert into StaffAndBatch(StaffId,BatchId) values(3,3)
insert into StaffAndBatch(StaffId,BatchId) values(3,4)

select * from News
select * from Roles
select * from Account
select * from FAQ
select * from Semester
select * from StaffAndBatch where StaffId = 3
select * from batch



