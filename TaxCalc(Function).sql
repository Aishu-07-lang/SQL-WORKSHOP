create function TaxCalculation(@loanAmount as Decimal(18,2),@TaxAmount Decimal (5,2))
Returns Decimal(18,2)
As
Begin
		Return @loanAmount * @TaxAmount / 100
END

select dbo.TaxCalculation(33500,12) AS TaxAmount

CREATE FUNCTION dbo.CalculateTax
(
    @LoanAmount DECIMAL(18,2),
    @TaxPercent DECIMAL(5,2)
)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TaxAmount DECIMAL(18,2)

    SET @TaxAmount = @LoanAmount * @TaxPercent / 100

    RETURN @TaxAmount
END

SELECT dbo.CalculateTax(100000, 5) AS TaxAmount
