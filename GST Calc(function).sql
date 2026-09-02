
Create database Functiondb
use Functiondb
CREATE FUNCTION CalcGST
(
    @loanAmount DECIMAL(15,2),
    @GSTperc DECIMAL(10,2)
)
RETURNS DECIMAL(15,2)
AS
BEGIN
    RETURN @loanAmount * @GSTperc / 100
END

Select dbo.CalcGST(100000,10) As GSTAmount


CREATE FUNCTION dbo.CalculateGST
(
    @LoanAmount DECIMAL(18,2),
    @GSTPercent DECIMAL(5,2)
)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @GSTAmount DECIMAL(18,2);

    SET @GSTAmount = @LoanAmount * @GSTPercent / 100;

    RETURN @GSTAmount;
END;