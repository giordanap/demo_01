
-- Activar/Desactivar usuario
CREATE   PROCEDURE dbo.SetUserActive
  @UserId UNIQUEIDENTIFIER,
  @IsActive BIT
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE dbo.Users SET IsActive=@IsActive WHERE Id=@UserId;
END