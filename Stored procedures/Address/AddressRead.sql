USE Customer
GO

IF OBJECT_ID('AddressRead') IS NOT NULL  
BEGIN  
DROP PROC AddressRead  
END  
GO  

CREATE PROCEDURE AddressRead
	@AddressID int
AS  
BEGIN  
Select * FROM [Address]
WHERE AddressID = @AddressID
END
GO