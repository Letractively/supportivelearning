--NewsCategory:
insert into Newscategories values(N'Tin Tức & Sự Kiện', 'Các tin tức và sự kiện của School')
go

insert into Newscategories values(N'Giáo Dục Và Đào Tạo', 'Các tin tức cách giáo dục và đào tạo tại School')
go

insert into Newscategories values(N'Công nghệ thông tin', 'Nói về các công nghệ mới và các thông tin về CNTT quan trọng cho Sinh Viên')
go

--News:
insert into News values(1, N'Phát Triển Ứng Dụng Android', 'NoImage.gif', N'Giới thiệu Trước khi nói đến Android, khi nhắc đến các nền tảng phát triển ứng dụng cho thiết bị di động...',
 'Giới thiệu Trước khi nói đến Android, khi nhắc đến các nền tảng phát triển ứng dụng cho thiết bị di động người ta thường nói đến Symbian, iPhone, Windows Mobile, BlackBerry, JavaME, LiMo v.v.. Vậy câu hỏi đầu tiên mà người làm công nghệ thường đặt... 
  Giới thiệu
Trước khi nói đến Android, khi nhắc đến các nền tảng phát triển ứng dụng cho thiết bị di động người ta thường nói đến Symbian, iPhone, Windows Mobile, BlackBerry, JavaME, LiMo v.v.. Vậy câu hỏi đầu tiên mà người làm công nghệ thường đặt ra là: Tại sao phải cần có thêm một nền tảng di động mới? Câu trả lời đôi khi lại là một câu hỏi khác: Điều gì tạo nên sự khác biệt cho Android?
Buổi thảo luận dành cho tất cả những bạn đam mê lập trình cho thiết bị di động đã có kinh nghiệm hoặc chưa từng làm việc, nghiên cứu về những công nghệ này, qua đó hy vọng sẽ giúp các bạn có cái nhìn rõ hơn về lĩnh vực phát triển ứng dụng trên thiết bị di động nói chung và nền tảng di động Android nói riêng.
Nội dung:
         Khám phá thế giới lập trình ứng dụng di động với Android
         Điều gì làm nên sự khác biệt cho Android?
         Làm thế nào để viết ứng dụng trên Android?
         Khai thác sức mạnh di động trên Android.', getdate())


insert into News values(2, N'Định Hướng Công Nghệ Cho Sinh Viên Công Nghệ Thông Tin', 'images/news/dinhhuong.jpg',N'FPT-Aptech là đơn vị đào tại CNTT Số 1 Việt Nam đã được khẳng định qua giải thưởng ...',
N'Nhằm định hướng công nghệ, giúp các bạn sinh viên CNTT tại các trường Đại học tại Hà Nội có cái nhìn cụ thể về các công nghệ nền tảng như công nghệ phần mềm, công nghệ Java và công nghệ .NET trong giai đoạn hiện nay, tạo cơ sở để sinh viên CNTT tại các trường ĐH lựa chọn hướng đi và nghề nghiệp tương lai trong lĩnh vực CNTT, FPT-Aptech tổ chức khóa học “Định hướng công nghệ-Technology Orientation” miễn phí.
 Khóa học được thiết kế bởi các giảng viên FPT-Aptech đã có nhiều năm kinh nghiệm giảng dạy, làm dự án tại các công ty phần mềm trong và ngoài nước. Bên cạnh phần lý thuyết còn có các phần thực hành, chia sẻ kinh nghiệm thực tế, làm bài kiểm tra, hỏi-đáp, tư vấn nghề nghiệp…Sinh viên tham gia khóa học còn có cơ hội nhận điện thoại may mắn từ chương trình bốc thăm trúng thưởng của FPT-Aptech. Kết thúc khóa học, sinh viên được cấp chứng chỉ khóa học của FPT-Aptech. Đây thực sự là khóa học bổ ích và là cơ hội đặc biệt dành cho các sinh viên CNTT.
', getdate())

insert into News values(2, N'Khởi Động Chương Trình Hướng Nghiệp Cho Học Sinh THPT', 'images/news/HocSinh.jpg', N'Chương trình hướng nghiệp 2010 cho học sinh 16 trường PTTH trên địa bàn Hà Nội do FPT-Aptech phối hợp...',
N'Chương trình hướng nghiệp 2010 cho học sinh PTTH gồm các nội dung chính như tham quan, giao lưu và  tìm hiểu về mô hình đào tạo Lập trình viên Quốc tế tại 3 cơ sở đào tạo của FPT-Aptech và mô hình việc làm của Lập trình viên tại các doanh nghiệp phần mềm tại Hà Nội. Chương trình nhằm giúp các bạn học sinh PTTH có cái nhìn thực tế về nghề lập trình cũng như ngành phần mềm, một trong những ngành đang phát triển và thu hút nhân lực hiện nay.
Chương trình đầu tiên đã nhận được sự hưởng ứng và tham gia nhiệt tình của 50 học sinh, thầy cô giáo và phụ huynh học sinh trường PTTH chuyên ĐH Sư Phạm, trường PTTH Hà Nội Amsterdam, THPT Lomonoxop. Chuỗi chương trình hướng nghiệp tiếp theo sẽ được tổ chức cho học sinh các trường PTTH như Việt Đức, Trương Định, Việt Nam-Ba Lan, Trần Nhân Tông, Lê Quý Đôn, Đống Đa, Yên Hòa, Nguyễn Trãi, Trần Phú, Nguyễn Trường Tộ, Việt Nam -Angeri, Lý Thường Kiệt…', getdate())


insert into News values(3, N'IBM sắp ra mắt siêu máy tính nhanh nhất mọi thời đại', 'images/news/IBM.jpg', N'IBM tuyên bố sẽ cho ra mắt một siêu máy tính mới có tốc độ nhanh nhất trong lịch sử với tốc độ xử lý..',
'Nhiều khả năng xử lý này vượt mặt tất cả các siêu máy tính đang có trên thế giới và "sức mạnh" của nó bằng 2 triệu chiếc laptop cộng lại. IBM hiện đang xúc tiến nhanh chóng phát triển hoàn thiện những khâu cuối cùng cho siêu máy tính thế hệ mới có tên Sequoia với sự hỗ trợ rất lớn từ chính phủ Mỹ, hệ thống hiện được đắt tại trung tâm nghiên cứu Lawrence Berkeley National Laboratory (Mỹ). Dự kiến siêu máy tính hàng “khủng” Sequoia sẽ chính thức đi vào hoạt động vào khoảng 2012.
Theo tiết lộ từ phía IBM cho biết Sequoia sẽ “ngốn” khoảng 1,6 tỷ bộ vi xử lý, nhiều cổng RAM với mỗi cổng có dung lượng lên đến 1,6 Terabyte. Tuy nhiên, IBM không tiết lộ mỗi bộ vi xử lý sẽ có bao nhiêu nhân và chi phí phát triển.
Sequoia chính thức đi vào hoạt động sẽ là một bước tiến mới trong lịch sử các siêu máy tính trên thế giới với vị trí đứng đầu trong gần 500 siêu máy tính có mặt ở khắp thế giới.
Theo đánh giá từ phía các chuyên gia, sự kiện Sequoia không chỉ có ý nghĩa về mặt công nghệ mà còn vô cùng hữu ích trong công tác dự báo biến đổi khí hậu toàn cầu như hiệu ứng nhà kính hay dự báo động đất sẽ chính xác hơn 40 - 50 lần so với hiện tại.', getdate())

insert into News values(3, N'Gia Công CNTT Miễn Nhiễm Với Khủng Hoảng', 'images/news/giacongIT.jpg', 'Cuộc khủng hoảng tài chính toàn cầu đang “bóp nghẹt” hoạt động của nhiều doanh nghiệp nhưng lại....',
'Cuộc khủng hoảng tài chính và suy thoái kinh tế toàn cầu đã và đang ảnh hưởng không nhỏ đến hoạt động của các doanh nghiệp CNTT. Một loạt các biện pháp đối phó khẩn cấp đã được đưa ra như cắt giảm nhân sự, tiết kiệm chi tiêu. Nhưng điều đáng chú ý là hầu hết các doanh nghiệp chỉ cắt giảm các chi phí và hoạt động trực tiếp, chỉ có một số rất nhỏ các doanh nghiệp tuyên bố cắt giảm quy mô của các hoạt động thuê ngoài và gia công (outsourcing). Nguyên nhân vì đâu?
Kết quả khảo sát 258 doanh nghiệp trong danh sách Global 2000 (2000 doanh nghiệp CNTT lớn nhất toàn cầu) do hãng Forrester Research vừa thực hiện đã cho thấy trong khi có đến 46% doanh nghiệp tuyên bố cắt giảm ngân sách cho CNTT thì chỉ có 21% doanh nghiệp tuyên bố cắt giảm chi tiêu cho dịch vụ CNTT. "Điều đáng giá nhất của một dịch vụ CNTT tốt là nó sẽ cho phép các doanh nghiệp hạ thấp chi phí, cải thiện các quá trình xử lý công việc và giúp cho các hoạt động sản xuất kinh doanh được trơn tru trong bất kỳ hoàn cảnh nào", Paul Roehrig - chuyên viên phân tích của Forrester phát biểu.
Điều này đồng nghĩa với việc hầu hết các lãnh đạo sẽ tiếp tục đầu tư vào lĩnh vực outsourcing song song với việc cắt giảm chi phí, thậm chí họ còn mở rộng hơn nữa quy mô của lĩnh vực này nhằm duy trì tốc độ tăng trưởng của doanh nghiệp mà không phải đầu tư thêm vốn hay tốn kém thêm ngân sách cho việc đầu tư các công nghệ mới. "Trên quy mô doanh nghiệp, trong những tháng sắp tới chúng ta sẽ được chứng kiến một nghịch lý: Tổng chi tiêu cho doanh nghiệp sẽ giảm trong khi chi tiêu cho lĩnh vực outsourcing lại tăng lên", Roehrig nói.
Theo một báo cáo khác của hãng chuyên tư vấn trong lĩnh vực gia công phần mềm TPI, số lượng các hợp đồng gia công trên toàn thế giới đến thời điểm này đã tăng khoảng 5%  so với năm 2007 nhưng tổng giá trị của các hợp đồng này lại tăng tới 19%.  TPI dự tính, giá trị của thị trường gia công phần mềm toàn cầu trong năm 2008 sẽ đạt khoảng 88 tỷ USD, tăng 10% so với năm 2007. Đặc biệt giá trị của nhóm gia công các dịch vụ kinh doanh sẽ tăng khoảng 14% lên 22 tỷ USD.
"Quan điểm của chúng tôi là viễn cảnh của ngành này trong năm 2009 sẽ tương tự như năm 2008", Brian Smith - Giám đốc điều hành chi nhánh Bắc Mỹ của TPI phát biểu.
Tuy vậy, điều này không có nghĩa là lĩnh vực gia công và dịch vụ CNTT sẽ không có bất kỳ sự thay đổi nào trong năm tới. "Các bản hợp đồng sẽ vẫn được ký kết nhưng chúng sẽ không được tiến hành giống như bình thường", chuyên gia Roehrig của Forrester nói, "Các công đoạn hay lĩnh vực sẽ được lựa chọn kỹ lưỡng hơn trước khi chuyển sang cho các đối tác gia công". Còn David Etzler - Tổng giám đốc của OutsourceWorld đã đưa ra nhận định của mình trong Hội nghị thường niên của Hiệp hội các doanh nghiệp gia công phần mềm rằng hoạt động này sẽ "náo nhiệt" hơn trong năm tới nên quy mô của các bản hợp đồng sẽ thay đổi. Qua quá trình trao đổi với các Giám đốc Công nghệ Thông tin (CIO), David Etzler nhận thấy rằng hầu hết các lãnh đạo đều có xu hướng phân nhỏ các hợp đồng cho nhiều nhà thầu khác nhau để tránh rủi ro đồng thời tận dụng một cách tối đa sở trường của từng nhà thầu trong từng công đoạn khác nhau.
Lợi ích quan trọng nhất của việc chia nhỏ hợp đồng này là các doanh nghiệp sẽ có cơ hội thương lượng riêng với từng nhà thầu để đạt được một thỏa thuận có lợi nhất cho họ. "Các lãnh đạo hiểu rằng họ đang phải đối mặt với một cuộc khủng hoảng tồi tệ nhất từ thời kỳ Đại khủng hoảng (1929) đến nay nên nếu có cơ hội để giúp cho doanh nghiệp của họ giảm thiểu chi phí và tồn tại qua được giai đoạn này, họ sẽ làm tất cả để đạt được mục đích", chuyên gia Roehrig kết luận.', getdate())


select * from News
select * from Newscategories
