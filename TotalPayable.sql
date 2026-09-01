CREATE FUNCTION CalcTotalAmount
(
    @LoanAmount DECIMAL(15,2),
    @InterestRate DECIMAL(10,2),
    @Years INT,
    @GSTPercent DECIMAL(10,2),
    @TaxPercent DECIMAL(10,2)
)
RETURNS DECIMAL(15,2)
AS
BEGIN

    DECLARE @InterestAmount DECIMAL(15,2);
    DECLARE @GSTAmount DECIMAL(15,2);
    DECLARE @TaxAmount DECIMAL(15,2);

    SET @InterestAmount = dbo.CalcLoan(
                            @LoanAmount,
                            @InterestRate,
                            @Years
                          );

    SET @GSTAmount = dbo.CalcGST(
                        @LoanAmount,
                        @GSTPercent
                     );

    SET @TaxAmount = dbo.CalcTax(
                        @LoanAmount,
                        @TaxPercent
                     );

    RETURN @LoanAmount
           + @InterestAmount
           + @GSTAmount
           + @TaxAmount;
END


SELECT dbo.CalcTotalAmount(
    100000, -- Loan
    10,     -- Interest %
    2,      -- Years
    18,     -- GST %
    5       -- Tax %
) AS TotalAmount