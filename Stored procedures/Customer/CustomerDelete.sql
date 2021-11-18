USE Customer
GO

IF OBJECT_ID('CustomerDelete') IS NOT NULL  
BEGIN  
DROP PROC CustomerDelete 
END  
GO  

CREATE PROCEDURE CustomerDelete
	@CustomerID int
AS  
BEGIN  
DELETE FROM Customer
WHERE CustomerID = @CustomerID
END