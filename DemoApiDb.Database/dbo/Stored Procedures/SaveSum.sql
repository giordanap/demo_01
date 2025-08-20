
CREATE   PROCEDURE dbo.SaveSum
    @numeroA    INT,
    @numeroB    INT,
    @Result     INT OUTPUT,
    @NewId      UNIQUEIDENTIFIER OUTPUT,
    @CreatedAt  DATETIME2 OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SET @Result = @numeroA + @numeroB;

    DECLARE @out TABLE (Id UNIQUEIDENTIFIER, CreatedAt DATETIME2);

    INSERT INTO dbo.Sums (numeroA, numeroB, Result)
    OUTPUT INSERTED.Id, INSERTED.CreatedAt INTO @out
    VALUES (@numeroA, @numeroB, @Result);

    SELECT TOP (1) @NewId = Id, @CreatedAt = CreatedAt FROM @out;
END