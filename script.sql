USE [master]
GO
drop database UserManagement
go

CREATE DATABASE [UserManagement] 

USE [UserManagement]
GO
delete tblUsers  where 1=1
IF OBJECT_ID('OrderDetail', 'U') IS NOT NULL
   DROP TABLE OrderDetail

IF OBJECT_ID('Orders', 'U') IS NOT NULL
   DROP TABLE Orders

IF OBJECT_ID('Product', 'U') IS NOT NULL
   DROP TABLE Product

DROP TABLE tblUsers


CREATE TABLE [dbo].[tblUsers](

[userID] [nvarchar](50) NOT NULL,

[fullName] [nvarchar](50) NULL,

[password] [nvarchar](50) NULL,

[roleID] [nvarchar](50) NULL,

[status] [bit] NULL,

CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED

(

[userID] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]
GO

CREATE TABLE tblOrders (
    orderID INT PRIMARY KEY IDENTITY(1,1),
    userID nvarchar(50) FOREIGN KEY REFERENCES tblUsers(userID),
    date DATE,
    total FLOAT
);

CREATE TABLE tblProduct (
    productID VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255),
    price FLOAT,
    quantity INT
);

CREATE TABLE tblOrderDetail (
    orderDetailID INT PRIMARY KEY IDENTITY(1,1),
    orderID INT FOREIGN KEY REFERENCES tblOrders(orderID),
    productID VARCHAR(255) FOREIGN KEY REFERENCES tblProduct(productID),
    price FLOAT,
    quantity INT
);


INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'admin', N'Toi la admin', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'Hoadnt', N'Hoa Doan', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE130363', N'Ngo Ha Tri Bao', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140103', N'Phuoc Ha', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140119', N'Trai Nguyen', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140130', N'Tam Tran', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140201', N'PHAM HOANG TU', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140969', N'Nguyen Gia Tin', N'123', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE150443', N'LE MINH KHOA', N'1', N'US', 1)

INSERT INTO tblProduct (productID, name, price, quantity)
VALUES 
('MBSK01', 'Mobuseka', 200.0, 30),
('KNY01', 'Demon Slayer', 50.0, 15),
('DRM01', '	Doraemon Plus', 50.0, 12),
('ABT01', 'Hoi Chung Tuoi Thanh Xuan', 100.0, 30),
('WWY01', 'Weathering With You', 100.0, 15), 
('5CMPS', '5 Centimet Per Second', 90.0, 16),
('SNT01', 'Suzume no Tojimari', 120.0, 19),
('TBM01', 'Tho Bay Mau', 100.0, 18),
('DTTCN01', 'Detective Conan', 	60.0, 18);
go


SELECT userID, fullName, password, roleID FROM tblUsers
SELECT * FROM tblProduct
SELECT * FROM tblOrders
SELECT * FROM tblOrderDetail

SELECT count(*) as num FROM tblUsers