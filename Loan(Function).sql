CREATE FUNCTION CalcLoanInterest
(
    @LoanAmount DECIMAL(15,2),
    @InterestRate DECIMAL(10,2),
    @Years INT
)
RETURNS DECIMAL(15,2)
AS
BEGIN
    RETURN (@LoanAmount * @InterestRate * @Years) / 100
END

SELECT DBO.CalcLoanInterest(10000,10,2)
