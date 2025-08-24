-- Crear usuario
CREATE   PROCEDURE dbo.CreateUser
  @Username NVARCHAR(100),
  @PasswordHash NVARCHAR(500),
  @IsActive BIT = 1
AS
BEGIN
  SET NOCOUNT ON;
  IF EXISTS (SELECT 1 FROM dbo.Users WHERE Username=@Username)
    THROW 50001, 'Username already exists', 1;

  INSERT INTO dbo.Users(Username, PasswordHash, IsActive)
  VALUES (@Username, @PasswordHash, @IsActive);

  SELECT Id, Username, IsActive FROM dbo.Users WHERE Username=@Username;
END