using System.Data;
using Dapper;
using Demo.Application.Auth;
using Demo.Domain.Users;
using Demo.Infrastructure.Persistence;

namespace Demo.Infrastructure.Users;

public sealed class SqlUserRepository : IUserRepository
{
    private readonly DualDbContext _ctx;
    public SqlUserRepository(DualDbContext ctx) => _ctx = ctx;

    public async Task<User?> GetByUsernameAsync(string username, CancellationToken ct)
    {
        using var cn = _ctx.CreateSqlConnection();
        var u = await cn.QuerySingleOrDefaultAsync<dynamic>(
            new CommandDefinition("dbo.GetUserByUsername",
                new { Username = username }, commandType: CommandType.StoredProcedure, cancellationToken: ct));
        if (u is null) return null;

        var roles = await cn.QueryAsync<string>(
            new CommandDefinition("dbo.GetUserRoles",
                new { UserId = (Guid)u.Id }, commandType: CommandType.StoredProcedure, cancellationToken: ct));

        return new User
        {
            Id = (Guid)u.Id,
            Username = (string)u.Username,
            PasswordHash = (string)u.PasswordHash,
            IsActive = (bool)u.IsActive,
            Roles = roles.AsList()
        };
    }

    public async Task<Guid> CreateUserAsync(string username, string passwordHash, bool isActive, CancellationToken ct)
    {
        using var cn = _ctx.CreateSqlConnection();
        var row = await cn.QuerySingleAsync<dynamic>(
            new CommandDefinition("dbo.CreateUser",
                new { Username = username, PasswordHash = passwordHash, IsActive = isActive },
                commandType: CommandType.StoredProcedure, cancellationToken: ct));
        return (Guid)row.Id;
    }

    public async Task AssignRoleAsync(Guid userId, string roleName, CancellationToken ct)
    {
        using var cn = _ctx.CreateSqlConnection();
        await cn.ExecuteAsync(new CommandDefinition("dbo.AssignRoleToUser",
            new { UserId = userId, RoleName = roleName }, commandType: CommandType.StoredProcedure, cancellationToken: ct));
    }

    public async Task<IReadOnlyList<string>> GetRolesAsync(Guid userId, CancellationToken ct)
    {
        using var cn = _ctx.CreateSqlConnection();
        var r = await cn.QueryAsync<string>(
            new CommandDefinition("dbo.GetUserRoles",
                new { UserId = userId }, commandType: CommandType.StoredProcedure, cancellationToken: ct));
        return r.AsList();
    }

    public async Task UpdatePasswordHashAsync(Guid userId, string passwordHash, CancellationToken ct)
    {
        using var cn = _ctx.CreateSqlConnection();
        await cn.ExecuteAsync(new CommandDefinition("dbo.UpdatePasswordHash",
            new { UserId = userId, PasswordHash = passwordHash }, commandType: CommandType.StoredProcedure, cancellationToken: ct));
    }

    public async Task SetActiveAsync(Guid userId, bool isActive, CancellationToken ct)
    {
        using var cn = _ctx.CreateSqlConnection();
        await cn.ExecuteAsync(new CommandDefinition("dbo.SetUserActive",
            new { UserId = userId, IsActive = isActive }, commandType: CommandType.StoredProcedure, cancellationToken: ct));
    }
}
