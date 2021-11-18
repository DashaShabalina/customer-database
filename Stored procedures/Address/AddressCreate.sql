USE Customer
GO

IF OBJECT_ID('AddressCreate') IS NOT NULL  
BEGIN  
DROP PROC AddressCreate  
END  
GO  

CREATE PROCEDURE AddressesCreate
	@CustomerID int,
	@AddressLine nvarchar(100),  
	@AddressLine2 nvarchar(100),  
	@AddressType nvarchar(20),  
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@State nvarchar(20),
	@Country nvarchar(15)
AS  
BEGIN  
INSERT INTO [Address] VALUES (@CustomerID, @AddressLine, @AddressLine2, @AddressType, @City, @PostalCode, @State, @Country)  
DECLARE @AddressID INT
SET @AddressID = SCOPE_IDENTITY()  
SELECT * FROM [Address]
WHERE AddressID = @AddressID
END