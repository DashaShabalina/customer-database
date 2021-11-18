USE Customer
GO

IF OBJECT_ID('AddressUpdate') IS NOT NULL  
BEGIN  
DROP PROC AddressUpdate  
END  
GO  

CREATE PROCEDURE AddressUpdate
	@AddressID int,
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
UPDATE [Address]
SET AddressLine = @AddressLine,  
	AddressLine2 = @AddressLine2,  
	AddressType = @AddressType,  
	City = @City,
	PostalCode = @PostalCode,
	State = @State,
	Country = @Country
WHERE CustomerID = @CustomerID and AddressID = @AddressID
END

