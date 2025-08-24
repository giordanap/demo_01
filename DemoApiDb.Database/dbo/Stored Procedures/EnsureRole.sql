
-- Crear rol si no existe
CREATE   PROCEDURE dbo.EnsureRole
  @RoleName NVARCHAR(100)
AS
BEGIN
  SET NOCOUNT ON;
  IF NOT EXISTS (SELECT 1 FROM dbo.Roles WHERE Name=@RoleName)
    INSERT INTO dbo.Roles(Name) VALUES(@RoleName);
  SELECT Id, Name FROM dbo.Roles WHERE Name=@RoleName;
END