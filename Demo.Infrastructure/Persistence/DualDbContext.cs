using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Options;
using MongoDB.Driver;

namespace Demo.Infrastructure.Persistence;

public sealed class DualDbContext
{
    public string Provider { get; }
    private readonly string? _sqlCs;
    private readonly IMongoDatabase? _mongoDb;
    private readonly PersistenceOptions.MongoOptions _mongoOpt;

    public DualDbContext(IOptions<PersistenceOptions> options)
    {
        var opt = options.Value;
        Provider = opt.Provider?.ToLowerInvariant() ?? "sql";

        if (Provider == "sql")
        {
            _sqlCs = opt.SqlConnectionString ?? throw new InvalidOperationException("SqlConnectionString required");
        }
        else if (Provider == "mongo")
        {
            _mongoOpt = opt.Mongo ?? throw new InvalidOperationException("Mongo options required");
            if (string.IsNullOrWhiteSpace(_mongoOpt.ConnectionString) || string.IsNullOrWhiteSpace(_mongoOpt.DatabaseName))
                throw new InvalidOperationException("Mongo: ConnectionString and DatabaseName required");

            var cli = new MongoClient(_mongoOpt.ConnectionString);
            _mongoDb = cli.GetDatabase(_mongoOpt.DatabaseName);
        }
        else
        {
            throw new InvalidOperationException($"Unsupported provider: {Provider}");
        }
    }

    public SqlConnection CreateSqlConnection()
    {
        if (Provider != "sql") throw new InvalidOperationException("Provider is not SQL");
        return new SqlConnection(_sqlCs);
    }

    public IMongoDatabase MongoDatabase =>
        Provider == "mongo" ? _mongoDb! : throw new InvalidOperationException("Provider is not Mongo");

    public PersistenceOptions.MongoOptions MongoOptions =>
        Provider == "mongo" ? _mongoOpt : throw new InvalidOperationException("Provider is not Mongo");
}
