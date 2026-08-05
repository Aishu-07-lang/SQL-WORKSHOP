create database BANK_TRANS
USE BANK_TRANS

CREATE TABLE Accounts
(
    AccountNo INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Balance DECIMAL(10,2)
)

SELECT * FROM ACCOUNTS

INSERT INTO Accounts VALUES
(101,'Aishwarya',50000),
(102,'SWARUPA',30000),
(103,'KISHOR',45000),
(104,'SUSHANT',30000),
(105,'PRATHMESH',25000)

CREATE PROCEDURE TransferMoney
(
    @FromAccount INT,
    @ToAccount INT,
    @Amount DECIMAL(10,2)
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check balance
        IF (SELECT Balance
            FROM Accounts
            WHERE AccountNo = @FromAccount) < @Amount
        BEGIN
            PRINT 'Transaction Failed - Insufficient Balance';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Debit
        UPDATE Accounts
        SET Balance = Balance - @Amount
        WHERE AccountNo = @FromAccount;

        -- Credit
        UPDATE Accounts
        SET Balance = Balance + @Amount
        WHERE AccountNo = @ToAccount;

        COMMIT TRANSACTION;

        PRINT 'Transaction Successful';
    END TRY

    BEGIN CATCH
        ROLLBACK TRANSACTION;

        PRINT 'Transaction Failed';
        PRINT 'Please Retry the Transaction';

        SELECT
            ERROR_NUMBER() AS ErrorNo,
            ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
END

TransferMoney @FromAccount = 101,
              @ToAccount = 105,
              @Amount = 200000;

