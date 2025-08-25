namespace Demo.Infrastructure.Persistence;

public sealed class PersistenceOptions
{
    public string Provider { get; set; } = "sql"; // "sql" | "mongo"
    public string? SqlConnectionString { get; set; }

    public MongoOptions Mongo { get; set; } = new();
    public sealed class MongoOptions
    {
        public string ConnectionString { get; set; } = "";
        public string DatabaseName { get; set; } = "";
        public string SumsCollection { get; set; } = "Sums";
        public string UsersCollection { get; set; } = "users";
    }
}
