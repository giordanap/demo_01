using Demo.Application.Auth;
using Demo.Application.Sums;
using Demo.Infrastructure.Persistence;
using Demo.Infrastructure.Sums;
using Demo.Infrastructure.Users;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace Demo.Infrastructure;

public static class DependencyInjection
{
    public static IServiceCollection AddInfrastructure(this IServiceCollection services, IConfiguration cfg)
    {
        services.Configure<PersistenceOptions>(opt =>
        {
            opt.Provider = cfg["Persistence:Provider"] ?? "sql";
            opt.SqlConnectionString = cfg.GetConnectionString("DefaultConnection") ?? cfg["Persistence:SqlConnectionString"];

            opt.Mongo.ConnectionString = cfg["MongoDbSettings:ConnectionString"] ?? cfg["Persistence:Mongo:ConnectionString"] ?? "";
            opt.Mongo.DatabaseName = cfg["MongoDbSettings:DatabaseName"] ?? cfg["Persistence:Mongo:DatabaseName"] ?? "";
            opt.Mongo.SumsCollection = cfg["MongoDbSettings:CollectionName"] ?? "Sums";
            opt.Mongo.UsersCollection = cfg["MongoDbSettings:UsersCollection"] ?? "users";
        });

        services.AddSingleton<DualDbContext>();

        var provider = (cfg["Persistence:Provider"] ?? "sql").ToLowerInvariant();
        if (provider == "mongo")
        {
            services.AddScoped<IUserRepository, MongoUserRepository>();
            services.AddScoped<ISumRepository, MongoSumRepository>();
        }
        else
        {
            services.AddScoped<IUserRepository, SqlUserRepository>();
            services.AddScoped<ISumRepository, SqlSumRepository>();
        }

        return services;
    }
}
