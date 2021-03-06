/****** LIBRARY MANAGEMENT by group WHATEVER - SE1402 ******/
CREATE DATABASE [LibC#]
GO
USE [LibC#]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 11/22/2020 10:09:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](100) NULL,
	[Category] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LibrarianInfo]    Script Date: 11/22/2020 10:09:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibrarianInfo](
	[LibID] [nvarchar](50) NOT NULL,
	[LibName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LibrarianInfo] PRIMARY KEY CLUSTERED 
(
	[LibID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogLibs]    Script Date: 11/22/2020 10:09:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogLibs](
	[StudentID] [char](50) NOT NULL,
	[BookID] [int] NOT NULL,
	[NgayMuon] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[LibID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__LogLibs__5E5499A89CDD0EF1] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/22/2020 10:09:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [char](50) NOT NULL,
	[FullName] [nvarchar](30) NOT NULL,
	[Email] [varchar](30) NULL,
	[Status] [int] NULL CONSTRAINT [DF__Users__Status__117F9D94]  DEFAULT ((1)),
	[Class] [nvarchar](50) NULL,
 CONSTRAINT [PK__Users__1788CCACA8DAAE56] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (1, N'Sức Mạnh Của Văn Hóa Doanh Nghiệp', N'Chris Dyer', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (2, N'Kinh Doanh Outsource', N'Bonnie Siegler', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (3, N'Những Tỷ Phú Tên Lửa', N'Tim Fernholz', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (4, N'Kỹ Năng Lãnh Đạo Từ Những Việc Nhỏ', N'G Shawn Hunter', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (5, N'Xây Dựng Thương Hiệu Với 0 Đồng', N'Takahashi Katsunori', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (6, N'Chuyển Đổi Số', N'Lindsay Herbert', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (7, N'Nhà Lãnh Đạo Nhạy Bén', N'Simon Hayward', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (8, N'Chiến Tranh Tiền Tệ', N'Song Hong Bing', N'Kinh Tế', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (9, N'Python Cơ Bản', N'Bùi Việt Hà', N'CNTT', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (10, N'Tự Học Lập Trình', N'Bùi Việt Hà', N'CNTT', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (11, N'Lập Trình Windows Form và Web Form Với C#', N'Phạm Quang Hiển', N'CNTT', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (12, N'Học Cách Thiết Kế Slide', N'Nancy Duarte', N'CNTT', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (13, N'Lập Trình Với Scratch', N'Lifelong Kindergarten', N'CNTT', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (14, N'Design Layout Volume 1', N'Roger C. Parker''s', N'CNTT', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (15, N'Mina No Nihongo 1', N'', N'Tiếng Nhật', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (16, N'Sách học bảng chữ Hiragana và Katakana', N'Lê Khánh Vy', N'Tiếng Nhật', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (17, N'Giáo trình học chữ Kanji', N'', N'Tiếng Nhật', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (18, N'Sách luyện ngữ pháp', N'Hikari', N'Tiếng Nhật', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (19, N'Từ tốt đến vĩ đại', N'Jim Collins', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (20, N'7 Thói quen hiệu quả', N'Stephen R. Covey', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (21, N'Sức mạnh của vị giám đốc một phút', N'Kenneth H. Blanchard', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (22, N'Ai lấy miếng pho mát của tôi', N'Spencer Johnson', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (23, N'Xây dựng để trường tồn', N'Jim Collins', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (24, N'Điểm bùng phát', N'Malcolm Gladwell', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (25, N'Dấn thân', N'Sheryl Sandberg', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (26, N'Tạo lập mô hình kinh doanh', N'Alexander Osterwalder', N'QTKD', 1)
INSERT [dbo].[Books] ([BookID], [Name], [Author], [Category], [Status]) VALUES (27, N'Không đến một', N'Peter Thiel', N'QTKD', 1)
SET IDENTITY_INSERT [dbo].[Books] OFF
INSERT [dbo].[LibrarianInfo] ([LibID], [LibName], [Password]) VALUES (N'L001', N'LTTN', N'LTTN1321')
INSERT [dbo].[LibrarianInfo] ([LibID], [LibName], [Password]) VALUES (N'L002', N'VTHN', N'VTHN3192')
INSERT [dbo].[LibrarianInfo] ([LibID], [LibName], [Password]) VALUES (N'L003', N'HNTM', N'HNTM1233')
INSERT [dbo].[LibrarianInfo] ([LibID], [LibName], [Password]) VALUES (N'L004', N'TDH', N'TDH9120')
INSERT [dbo].[LibrarianInfo] ([LibID], [LibName], [Password]) VALUES (N'a', N'a', N'a')
SET IDENTITY_INSERT [dbo].[LogLibs] ON 

/*INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14001', 2, CAST(N'2020-11-15 00:00:00.000' AS DateTime), CAST(N'2020-11-21 00:00:00.000' AS DateTime), 1, N'L001')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14002', 6, CAST(N'2020-11-14 00:00:00.000' AS DateTime), CAST(N'2020-11-20 00:00:00.000' AS DateTime), 2, N'L001')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14001', 5, CAST(N'2020-03-16 00:00:00.000' AS DateTime), CAST(N'2020-03-31 00:00:00.000' AS DateTime), 3, N'L001')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14002', 17, CAST(N'2020-03-21 00:00:00.000' AS DateTime), CAST(N'2020-03-26 00:00:00.000' AS DateTime), 4, N'L001')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14001', 1, CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-02-16 00:00:00.000' AS DateTime), 5, N'L001')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14004', 12, CAST(N'2020-03-27 00:00:00.000' AS DateTime), CAST(N'2020-04-13 00:00:00.000' AS DateTime), 6, N'L002')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14007', 9, CAST(N'2020-04-04 00:00:00.000' AS DateTime), CAST(N'2020-04-15 00:00:00.000' AS DateTime), 7, N'L002')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14018', 3, CAST(N'2020-04-07 00:00:00.000' AS DateTime), CAST(N'2020-04-22 00:00:00.000' AS DateTime), 8, N'L002')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14012', 5, CAST(N'2020-04-12 00:00:00.000' AS DateTime), CAST(N'2020-04-21 00:00:00.000' AS DateTime), 9, N'L001')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14011', 14, CAST(N'2020-04-12 00:00:00.000' AS DateTime), CAST(N'2020-04-29 00:00:00.000' AS DateTime), 10, N'L002')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14015', 7, CAST(N'2020-04-15 00:00:00.000' AS DateTime), CAST(N'2020-04-27 00:00:00.000' AS DateTime), 11, N'L002')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14003', 18, CAST(N'2020-04-21 00:00:00.000' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), 12, N'L003')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14006', 12, CAST(N'2020-04-24 00:00:00.000' AS DateTime), CAST(N'2020-05-03 00:00:00.000' AS DateTime), 13, N'L004')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14017', 19, CAST(N'2020-05-03 00:00:00.000' AS DateTime), CAST(N'2020-05-15 00:00:00.000' AS DateTime), 14, N'L004')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14016', 4, CAST(N'2020-05-07 00:00:00.000' AS DateTime), CAST(N'2020-05-21 00:00:00.000' AS DateTime), 15, N'L003')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14001', 10, CAST(N'2020-05-08 00:00:00.000' AS DateTime), CAST(N'2020-05-19 00:00:00.000' AS DateTime), 16, N'L001')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14005', 14, CAST(N'2020-05-12 00:00:00.000' AS DateTime), CAST(N'2020-05-17 00:00:00.000' AS DateTime), 17, N'L002')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14015', 7, CAST(N'2020-05-17 00:00:00.000' AS DateTime), CAST(N'2020-05-29 00:00:00.000' AS DateTime), 18, N'L003')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14011', 11, CAST(N'2020-05-23 00:00:00.000' AS DateTime), CAST(N'2020-05-30 00:00:00.000' AS DateTime), 19, N'L004')
INSERT [dbo].[LogLibs] ([StudentID], [BookID], [NgayMuon], [NgayTra], [LogID], [LibID]) VALUES (N'DE14009', 1, CAST(N'2020-05-29 00:00:00.000' AS DateTime), CAST(N'2020-06-05 00:00:00.000' AS DateTime), 20, N'L002')
SET IDENTITY_INSERT [dbo].[LogLibs] OFF*/
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14001', N'Nguyễn Hoàng My', N'mynh@gmail.com', 1, N'SE1401')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14002', N'Lê Thị Thanh Nhàn', N'nhanltt29@gmail.com', 1, N'SE1402')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14003', N'Nguyễn Văn Huy', N'Xaki@gmail.com', 1, N'SE1402')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14004', N'Lưu Phương Uyên', N'uyenlp@gmail.com', 1, N'SE1401')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14005', N'Nguyễn Duy Hưng', N'hungnd4@gmail.com', 1, N'SE1504')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14006', N'Nguyễn Thị Hoài Thanh', N'Thanhhtn@gmail.com', 1, N'PC1601')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14007', N'Lê Nguyên Khang', N'Khangln@gmail.com', 1, N'PC1602')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14008', N'Nguyễn Đình Nhật', N'Nhatnd@gmail.com', 1, N'PC1602')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14009', N'Lê Hữu Nam', N'namlh@gmail.com', 1, N'PC1602')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14010', N'Phạm Thế Toàn', N'toanpt@gmail.com', 1, N'SE1503')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14011', N'Phan Nguyễn Bích Trâm', N'trampnb@gmail.com', 1, N'PC1603')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14012', N'Lương Nguyên Bảo', N'Baoln@gmail.com', 1, N'PC1603')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14013', N'Đinh Quốc Đạt', N'Datdq@gmail.com', 1, N'PC1604')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14014', N'Trần Minh Mẫn', N'mantm@gmail.com', 1, N'PC1604')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14015', N'Trần Thanh Châu', N'Chautt@gmail.com', 1, N'SE1401')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14016', N'Nguyễn Trung Quân', N'Quannt@gmail.com', 1, N'PC1605')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14017', N'Nguyễn Thị Thu Phương', N'Phuongntt@gmail.com', 1, N'PC1605')
INSERT [dbo].[Student] ([StudentID], [FullName], [Email], [Status], [Class]) VALUES (N'DE14018', N'Võ Nhật Vũ', N'Vuvn@gmail.com', 1, N'SE1402')
ALTER TABLE [dbo].[LogLibs]  WITH CHECK ADD  CONSTRAINT [FK__LogLibs__Student__47DBAE45] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[LogLibs] CHECK CONSTRAINT [FK__LogLibs__Student__47DBAE45]
GO
ALTER TABLE [dbo].[LogLibs]  WITH CHECK ADD  CONSTRAINT [FK_LogLibs_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[LogLibs] CHECK CONSTRAINT [FK_LogLibs_Books]
GO
ALTER TABLE [dbo].[LogLibs]  WITH CHECK ADD  CONSTRAINT [FK_LogLibs_LibrarianInfo] FOREIGN KEY([LibID])
REFERENCES [dbo].[LibrarianInfo] ([LibID])
GO
ALTER TABLE [dbo].[LogLibs] CHECK CONSTRAINT [FK_LogLibs_LibrarianInfo]
GO
ALTER TABLE [dbo].[LogLibs]  WITH CHECK ADD  CONSTRAINT [FK_LogLibs_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[LogLibs] CHECK CONSTRAINT [FK_LogLibs_Student]
GO
