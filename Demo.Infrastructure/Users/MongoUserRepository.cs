using Demo.Application.Auth;
using Demo.Domain.Users;
using Demo.Infrastructure.Persistence;
using MongoDB.Driver;

namespace Demo.Infrastructure.Users;

public sealed class MongoUserRepository : IUserRepository
{
    private readonly IMongoCollection<User> _col;

    public MongoUserRepository(DualDbContext ctx)
    {
        var db = ctx.MongoDatabase;
        var colName = ctx.MongoOptions.UsersCollection;
        _col = db.GetCollection<User>(colName);

        // Índices idempotentes:
        var models = new[]
        {
            new CreateIndexModel<User>(Builders<User>.IndexKeys.Ascending(x => x.Username),
                new CreateIndexOptions { Name = "ux_username", Unique = true }),
            new CreateIndexModel<User>(Builders<User>.IndexKeys.Ascending(x => x.Roles),
                new CreateIndexOptions { Name = "ix_roles" })
        };
        _col.Indexes.CreateMany(models);
    }

    public Task<User?> GetByUsernameAsync(string username, CancellationToken ct)
        => _col.Find(x => x.Username == username).FirstOrDefaultAsync(ct);

    public async Task<Guid> CreateUserAsync(string username, string passwordHash, bool isActive, CancellationToken ct)
    {
        var u = new User
        {
            Id = Guid.NewGuid(),
            Username = username,
            PasswordHash = passwordHash,
            IsActive = isActive,
            Roles = Array.Empty<string>()
        };
        await _col.InsertOneAsync(u, cancellationToken: ct);
        return u.Id;
    }

    public Task AssignRoleAsync(Guid userId, string roleName, CancellationToken ct)
        => _col.UpdateOneAsync(x => x.Id == userId,
            Builders<User>.Update.AddToSet(x => x.Roles!, roleName), cancellationToken: ct);

    public async Task<IReadOnlyList<string>> GetRolesAsync(Guid userId, CancellationToken ct)
    {
        var u = await _col.Find(x => x.Id == userId).FirstOrDefaultAsync(ct);
        return u?.Roles ?? Array.Empty<string>();
    }

    public Task UpdatePasswordHashAsync(Guid userId, string passwordHash, CancellationToken ct)
        => _col.UpdateOneAsync(x => x.Id == userId,
            Builders<User>.Update.Set(x => x.PasswordHash, passwordHash), cancellationToken: ct);

    public Task SetActiveAsync(Guid userId, bool isActive, CancellationToken ct)
        => _col.UpdateOneAsync(x => x.Id == userId,
            Builders<User>.Update.Set(x => x.IsActive, isActive), cancellationToken: ct);
}
