
/****** Object:  Table [dbo].[HrDepartment]    Script Date: 28/03/2019 12:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HrDepartment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[BonusPoolAllocationPerc] [int] NULL,
 CONSTRAINT [PK_HrDepartment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HrEmployee]    Script Date: 28/03/2019 12:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HrEmployee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FistName] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[HrDepartmentId] [int] NOT NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[Salary] [int] NOT NULL,
	[Full Name]  AS (([FistName]+' ')+[SecondName]),
 CONSTRAINT [PK_HrEmployee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[HrDepartment] ON 

GO
INSERT [dbo].[HrDepartment] ([ID], [Title], [Description], [BonusPoolAllocationPerc]) VALUES (1, N'Finance', N'The finance department for the company', 30)
GO
INSERT [dbo].[HrDepartment] ([ID], [Title], [Description], [BonusPoolAllocationPerc]) VALUES (2, N'Human Resources', N'The Human Resources department for the company', 25)
GO
INSERT [dbo].[HrDepartment] ([ID], [Title], [Description], [BonusPoolAllocationPerc]) VALUES (3, N'IT', N'The IT support department for the company', 20)
GO
INSERT [dbo].[HrDepartment] ([ID], [Title], [Description], [BonusPoolAllocationPerc]) VALUES (4, N'Marketing', N'The Marketing department for the company', 25)
GO
SET IDENTITY_INSERT [dbo].[HrDepartment] OFF
GO
SET IDENTITY_INSERT [dbo].[HrEmployee] ON 

GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (1, N'John', N'Smith', CAST(N'1985-09-05' AS Date), 1, N'Accountant (Senior)', 60000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (2, N'Janet', N'Jones', CAST(N'1970-01-23' AS Date), 2, N'HR Director', 90000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (3, N'Robert', N'Rinser', CAST(N'1978-05-17' AS Date), 3, N'IT Director', 95000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (4, N'Jilly', N'Thornton', CAST(N'1989-07-02' AS Date), 4, N'Marketing Manager (Senior)', 55000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (5, N'Gemma', N'Jones', CAST(N'1991-04-30' AS Date), 4, N'Marketing Manager (Junior)', 45000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (6, N'Peter', N'Bateman', CAST(N'1999-01-03' AS Date), 3, N'IT Support Engineer', 35000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (7, N'Azimir', N'Smirkov', CAST(N'1984-12-07' AS Date), 4, N'Creative Director', 62500)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (8, N'Penelope', N'Scunthorpe', CAST(N'1995-07-14' AS Date), 4, N'Creative Assistant', 38750)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (9, N'Amil', N'Kahn', CAST(N'1995-03-03' AS Date), 3, N'IT Support Engineer', 36000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (10, N'Joe', N'Masters', CAST(N'1994-06-09' AS Date), 3, N'IT Support Engineer', 36500)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (11, N'Paul', N'Azgul', CAST(N'1980-12-25' AS Date), 2, N'HR Manager', 53000)
GO
INSERT [dbo].[HrEmployee] ([ID], [FistName], [SecondName], [DateOfBirth], [HrDepartmentId], [JobTitle], [Salary]) VALUES (13, N'Jennifer', N'Saunders', CAST(N'1997-10-11' AS Date), 1, N'Accountant (Junior)', 48000)
GO
SET IDENTITY_INSERT [dbo].[HrEmployee] OFF
GO

