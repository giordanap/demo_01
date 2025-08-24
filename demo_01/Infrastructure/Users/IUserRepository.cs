using demo_01.Domain.Users;

namespace demo_01.Infrastructure.Users
{
    public interface IUserRepository
    {
        Task<User?> GetByUsernameAsync(string username, CancellationToken ct);
        Task<Guid> CreateUserAsync(string username, string passwordHash, bool isActive, CancellationToken ct);
        Task AssignRoleAsync(Guid userId, string roleName, CancellationToken ct);
        Task<IReadOnlyList<string>> GetRolesAsync(Guid userId, CancellationToken ct);
        Task UpdatePasswordHashAsync(Guid userId, string passwordHash, CancellationToken ct);
        Task SetActiveAsync(Guid userId, bool isActive, CancellationToken ct);
    }
}
