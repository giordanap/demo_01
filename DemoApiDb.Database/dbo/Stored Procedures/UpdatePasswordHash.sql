
-- Cambiar password
CREATE   PROCEDURE dbo.UpdatePasswordHash
  @UserId UNIQUEIDENTIFIER,
  @PasswordHash NVARCHAR(500)
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.Users SET PasswordHash=@PasswordHash WHERE Id=@UserId;
END