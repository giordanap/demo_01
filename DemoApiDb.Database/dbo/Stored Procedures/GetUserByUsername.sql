
-- Obtener usuario por username (incluye hash)
CREATE   PROCEDURE dbo.GetUserByUsername
  @Username NVARCHAR(100)
AS
BEGIN
  SET NOCOUNT ON;
  SELECT TOP(1) Id, Username, PasswordHash, IsActive
  FROM dbo.Users WHERE Username=@Username;
END