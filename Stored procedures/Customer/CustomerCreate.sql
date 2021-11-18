USE Customer
GO

IF OBJECT_ID('CustomerCreate') IS NOT NULL  
BEGIN  
DROP PROC CustomerCreate  
END  
GO  

CREATE PROCEDURE CustomerCreate  
	@FirstName nvarchar(50),  
	@LastName nvarchar(50),  
	@PhoneNumber nvarchar(15),  
	@Email nvarchar(40),
	@Notes nvarchar(max),
	@TotalPurchasesAmount money
AS  
BEGIN  
INSERT INTO [Customer] VALUES (@FirstName, @LastName, @PhoneNumber,	@Email, @Notes, @TotalPurchasesAmount)  
DECLARE @CustomerID INT
SET @CustomerID = SCOPE_IDENTITY()  
SELECT * FROM [Customer]
WHERE CustomerID = @CustomerID
END

