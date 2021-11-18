USE Customer
GO

IF OBJECT_ID('CustomerRead') IS NOT NULL  
BEGIN  
DROP PROC CustomerRead 
END  
GO  

CREATE PROCEDURE CustomerRead
	@CustomerID int
AS  
BEGIN  
SELECT * FROM Customer
WHERE CustomerID = @CustomerID
END
