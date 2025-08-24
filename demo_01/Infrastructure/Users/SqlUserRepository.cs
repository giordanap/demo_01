using Dapper;
using demo_01.Domain.Users;
using Microsoft.Data.SqlClient;

namespace demo_01.Infrastructure.Users
{
    public sealed class SqlUserRepository : IUserRepository
    {
        private readonly string _cs;
        public SqlUserRepository(IConfiguration cfg) => _cs = cfg.GetConnectionString("Sql")!;
        public async Task<User?> GetByUsernameAsync(string username, CancellationToken ct)
        {
            await using var cn = new SqlConnection(_cs);
            var u = await cn.QuerySingleOrDefaultAsync<dynamic>(
                "dbo.GetUserByUsername", new { Username = username },
                commandType: System.Data.CommandType.StoredProcedure);
            if (u is null) return null;
            var roles = (await cn.QueryAsync<string>("dbo.GetUserRoles",
                new { UserId = (Guid)u.Id }, commandType: System.Data.CommandType.StoredProcedure)).AsList();
            return new User { Id = u.Id, Username = u.Username, PasswordHash = u.PasswordHash, IsActive = u.IsActive, Roles = roles };
        }

        public async Task<Guid> CreateUserAsync(string username, string passwordHash, bool isActive, CancellationToken ct)
        {
            await using var cn = new SqlConnection(_cs);
            var row = await cn.QuerySingleAsync<dynamic>(
                "dbo.CreateUser", new { Username = username, PasswordHash = passwordHash, IsActive = isActive },
                commandType: System.Data.CommandType.StoredProcedure);
            return (Guid)row.Id;
        }

        public async Task AssignRoleAsync(Guid userId, string roleName, CancellationToken ct)
        {
            await using var cn = new SqlConnection(_cs);
            await cn.ExecuteAsync("dbo.AssignRoleToUser", new { UserId = userId, RoleName = roleName },
                commandType: System.Data.CommandType.StoredProcedure);
        }

        public async Task<IReadOnlyList<string>> GetRolesAsync(Guid userId, CancellationToken ct)
        {
            await using var cn = new SqlConnection(_cs);
            var r = await cn.QueryAsync<string>("dbo.GetUserRoles", new { UserId = userId },
                commandType: System.Data.CommandType.StoredProcedure);
            return r.AsList();
        }

        public async Task UpdatePasswordHashAsync(Guid userId, string passwordHash, CancellationToken ct)
        {
            await using var cn = new SqlConnection(_cs);
            await cn.ExecuteAsync("dbo.UpdatePasswordHash", new { UserId = userId, PasswordHash = passwordHash },
                commandType: System.Data.CommandType.StoredProcedure);
        }

        public async Task SetActiveAsync(Guid userId, bool isActive, CancellationToken ct)
        {
            await using var cn = new SqlConnection(_cs);
            await cn.ExecuteAsync("dbo.SetUserActive", new { UserId = userId, IsActive = isActive },
                commandType: System.Data.CommandType.StoredProcedure);
        }
    }
}
