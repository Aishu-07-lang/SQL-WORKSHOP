CREATE FUNCTION dbo.CalcEMI
(
    @LoanAmount DECIMAL(15,2),
    @AnnualInterestRate DECIMAL(10,2),
    @TenureMonths INT
)
RETURNS DECIMAL(15,2)
AS
BEGIN

    DECLARE @MonthlyRate DECIMAL(15,10);
    DECLARE @EMI DECIMAL(15,2);

    SET @MonthlyRate = @AnnualInterestRate / 12 / 100;

    SET @EMI =
        @LoanAmount
        * @MonthlyRate
        * POWER(1 + @MonthlyRate, @TenureMonths)
        /
        (POWER(1 + @MonthlyRate, @TenureMonths) - 1);

    RETURN @EMI;

END;
GO

create function EMI(@LOAN AS DECIMAL(18,2),@ANNUALINTEREST AS INT,@MONTHS AS INT)
RETURNS DECIMAL(18,2)
AS
Begin
        Return (@ANNUALINTEREST /12 / 100 )
end
        select dbo.EMI(10000,10,2) as monthlyrate

