
CREATE   PROCEDURE dbo.GetSumById
    @Id UNIQUEIDENTIFIER
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, numeroA, numeroB, Result, CreatedAt
    FROM dbo.Sums
    WHERE Id = @Id;
END