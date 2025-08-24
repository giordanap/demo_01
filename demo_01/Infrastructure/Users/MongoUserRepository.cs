using demo_01.Domain.Users;
using MongoDB.Driver;

namespace demo_01.Infrastructure.Users
{
    public sealed class MongoUserRepository : IUserRepository
    {
        private readonly IMongoCollection<User> _col;
        public MongoUserRepository(IConfiguration cfg)
        {
            var cs = cfg["Mongo:ConnectionString"]!;
            var dbName = cfg["Mongo:Database"]!;
            var cli = new MongoClient(cs);
            var db = cli.GetDatabase(dbName);
            _col = db.GetCollection<User>("users");
            _col.Indexes.CreateOne(new CreateIndexModel<User>(Builders<User>.IndexKeys.Ascending(u => u.Username),
                new CreateIndexOptions { Unique = true }));
        }

        public async Task<User?> GetByUsernameAsync(string username, CancellationToken ct)
            => await _col.Find(u => u.Username == username).FirstOrDefaultAsync(ct);

        public async Task<Guid> CreateUserAsync(string username, string passwordHash, bool isActive, CancellationToken ct)
        {
            var user = new User { Id = Guid.NewGuid(), Username = username, PasswordHash = passwordHash, IsActive = isActive, Roles = Array.Empty<string>() };
            await _col.InsertOneAsync(user, cancellationToken: ct);
            return user.Id;
        }

        public async Task AssignRoleAsync(Guid userId, string roleName, CancellationToken ct)
            => await _col.UpdateOneAsync(u => u.Id == userId,
                Builders<User>.Update.AddToSet(u => u.Roles!, roleName), cancellationToken: ct);

        public async Task<IReadOnlyList<string>> GetRolesAsync(Guid userId, CancellationToken ct)
        {
            var u = await _col.Find(x => x.Id == userId).FirstOrDefaultAsync(ct);
            return u?.Roles ?? Array.Empty<string>();
        }

        public async Task UpdatePasswordHashAsync(Guid userId, string passwordHash, CancellationToken ct)
            => await _col.UpdateOneAsync(u => u.Id == userId,
                Builders<User>.Update.Set(u => u.PasswordHash, passwordHash), cancellationToken: ct);

        public async Task SetActiveAsync(Guid userId, bool isActive, CancellationToken ct)
            => await _col.UpdateOneAsync(u => u.Id == userId,
                Builders<User>.Update.Set(u => u.IsActive, isActive), cancellationToken: ct);
    }

}
