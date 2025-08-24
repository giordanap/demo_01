
-- Asignar rol a usuario
CREATE   PROCEDURE dbo.AssignRoleToUser
  @UserId UNIQUEIDENTIFIER,
  @RoleName NVARCHAR(100)
AS
BEGIN
  SET NOCOUNT ON;
  EXEC dbo.EnsureRole @RoleName;
  DECLARE @RoleId UNIQUEIDENTIFIER = (SELECT Id FROM dbo.Roles WHERE Name=@RoleName);
  IF NOT EXISTS (SELECT 1 FROM dbo.UserRoles WHERE UserId=@UserId AND RoleId=@RoleId)
    INSERT INTO dbo.UserRoles(UserId, RoleId) VALUES(@UserId, @RoleId);
END