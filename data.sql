USE Customer;
GO

INSERT INTO Customer VALUES ('Dasha', 'Shabalina', '+10000000000000', 'dasha@gmail.com', 'Some text', 100)
INSERT INTO Customer VALUES ('Dasha', 'Shabalina', '+100asdf', 'dasha@gmail.com', 'Some text', 100)
INSERT INTO Customer VALUES ('Dasha', 'Shabalina', '+10000000000000', '"@gmail.com', 'Some text', 100)
GO

INSERT INTO [Address] VALUES (1, 'AddressLine', 'AddressLine2', 'Shipping', 'Barnaul', 'Code', '1','Russia')
INSERT INTO [Address] VALUES (1, 'AddressLine', 'AddressLine2', 'type', 'City', 'Code', '1','Canada')
INSERT INTO [Address] VALUES (1, 'AddressLine', 'AddressLine2', 'Billing', 'City', 'Code', '1','United States')
GO

--SELECT * FROM Customer
--SELECT * FROM [Address]