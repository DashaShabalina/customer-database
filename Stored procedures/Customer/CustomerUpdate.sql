USE Customer
GO

IF OBJECT_ID('CustomerUpdate') IS NOT NULL  
BEGIN  
DROP PROC CustomerUpdate  
END  
GO  

CREATE PROCEDURE CustomerUpdate
	@CustomerID int,
	@FirstName nvarchar(50),  
	@LastName nvarchar(50),  
	@PhoneNumber nvarchar(15),  
	@Email nvarchar(40),
	@Notes nvarchar(max),
	@TotalPurchasesAmount money
AS  
BEGIN  
UPDATE Customer
SET FirstName = @FirstName,  
	LastName = @LastName,  
	PhoneNumber = @PhoneNumber,  
	Email = @Email,
	Notes = @Notes,
	TotalPurchasesAmount = @TotalPurchasesAmount
WHERE CustomerID = @CustomerID
END
