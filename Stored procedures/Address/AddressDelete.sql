USE Customer
GO

IF OBJECT_ID('AddressDelete') IS NOT NULL  
BEGIN  
DROP PROC AddressDelete 
END  
GO  

CREATE PROCEDURE AddressDelete
	@AddressID int
AS  
BEGIN  
DELETE FROM [Address]
WHERE AddressID = @AddressID
END
