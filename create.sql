CREATE DATABASE Customer;
GO

USE Customer;
GO

DROP TABLE dbo.Address;
DROP TABLE dbo.Customer;
GO

CREATE TABLE [Customer](
	[CustomerID] INT NOT NULL IDENTITY(1,1) Constraint [PK_CustomerID] PRIMARY KEY CLUSTERED,
	[FirstName] NVARCHAR(50),
	[LastName] NVARCHAR(50) NOT NULL,
	[PhoneNumber] NVARCHAR(15) CONSTRAINT [CHECK_PhoneNumber] CHECK([PhoneNumber] LIKE '+[1-9]' + REPLICATE('[0-9]', 13)),
	[Email] NVARCHAR(40) CONSTRAINT [CHECK_Email] CHECK([Email] LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%' AND [Email] NOT LIKE '%["<>'']%'),
	[Notes] NVARCHAR(max)  NOT NULL,
	[TotalPurchasesAmount] MONEY NOT NULL
);

CREATE TABLE [Address](
	[AddressID] INT NOT NULL IDENTITY(1,1) Constraint [PK_AddressID] PRIMARY KEY CLUSTERED,
	[CustomerID] INT NOT NULL CONSTRAINT [FK_CustomerID] REFERENCES [Customer]([CustomerID]),
	[AddressLine] NVARCHAR(100) NOT NULL,
	[AddressLine2] NVARCHAR(100),
	[AddressType] NVARCHAR(20) NOT NULL CONSTRAINT [CHECK_AddressType] CHECK([AddressType]='Shipping' OR [AddressType]='Billing'),
	[City] NVARCHAR(50) NOT NULL,
	[PostalCode] NVARCHAR(6) NOT NULL,
	[State] NVARCHAR(20) NOT NULL,
	[Country] NVARCHAR(15) NOT NULL CONSTRAINT [CHECK_Country] CHECK([Country]='United States' OR [Country]='Canada')
);

