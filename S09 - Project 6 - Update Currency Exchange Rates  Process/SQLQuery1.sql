/****** Script for SelectTopNRows command from SSMS  ******/


CREATE DATABASE ExchangeRates;



CREATE TABLE TransactionTable
    (AccountNumber INT NOT NULL , 
	TransactionNumber INT NOT NULL , 
	VerifiedCustomer VARCHAR(50) NULL,
        BaseCurrency VARCHAR(50) NULL, 
		Amount FLOAT(50) NULL, 
		TransferCurrency VARCHAR(50) NULL,
		TransferAmount FLOAT(50) NULL,  
        ModifiedDate DATETIME NULL,
        
    )



INSERT INTO  TransactionTable
    (AccountNumber, TransactionNumber, VerifiedCustomer, BaseCurrency, Amount, TransferCurrency, TransferAmount,ModifiedDate)
VALUES 
    (10001, '324234', 'Y', 'USD','1000','INR','', GETDATE()),
    (10002, '34234234', 'Y', 'USD','500','INR','', GETDATE()),
    (10003, '56465', 'Y', 'GBP','100','USD','', GETDATE()),
    (10004, '52342324', 'N', 'GBP','2000','INR','', GETDATE()),
    (10005, '9080', 'Y', 'INR','20000','INR','', GETDATE()),
    (10006, '2242344', 'Y', 'INR','10000','USD','', GETDATE())


	/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [AccountNumber]
      ,[TransactionNumber]
      ,[VerifiedCustomer]
      ,[BaseCurrency]
      ,[Amount]
      ,[TransferCurrency]
      ,[TransferAmount]
      ,[ModifiedDate]
  FROM [ExchangeRates].[dbo].[TransactionTable]






UPDATE TransactionTable
SET TransferAmount = '', ModifiedDate= GETDATE()
WHERE AccountNumber = '10001';

