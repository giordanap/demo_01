
-- Roles de un usuario
CREATE   PROCEDURE dbo.GetUserRoles
  @UserId UNIQUEIDENTIFIER
AS
BEGIN
  SET NOCOUNT ON;
  SELECT r.Name
  FROM dbo.UserRoles ur
  JOIN dbo.Roles r ON r.Id = ur.RoleId
  WHERE ur.UserId=@UserId;
END