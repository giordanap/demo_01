using System.Data;
using Dapper;
using Demo.Application.Sums;
using Demo.Domain.Sums;
using Demo.Infrastructure.Persistence;

namespace Demo.Infrastructure.Sums;

public sealed class SqlSumRepository : ISumRepository
{
    private readonly DualDbContext _ctx;
    public SqlSumRepository(DualDbContext ctx) => _ctx = ctx;

    public async Task<string> SaveAsync(int a, int b, int result, CancellationToken ct)
    {
        using var cn = _ctx.CreateSqlConnection();
        var row = await cn.QuerySingleAsync<dynamic>(
            new CommandDefinition("dbo.SaveSum",
                new { NumeroA = a, NumeroB = b, Result = result },
                commandType: CommandType.StoredProcedure, cancellationToken: ct));
        Guid id = row.Id;
        return id.ToString();
    }

    public async Task<SumEntry?> GetByIdAsync(string id, CancellationToken ct)
    {
        if (!Guid.TryParse(id, out var guid)) return null;

        using var cn = _ctx.CreateSqlConnection();
        var row = await cn.QuerySingleOrDefaultAsync<dynamic>(
            new CommandDefinition("dbo.GetSumById",
                new { Id = guid }, commandType: CommandType.StoredProcedure, cancellationToken: ct));
        if (row is null) return null;

        return new SumEntry
        {
            Id = ((Guid)row.Id).ToString(),
            NumeroA = (int)row.numeroA,
            NumeroB = (int)row.numeroB,
            Result = (int)row.Result,
            CreatedAtUtc = (DateTime)row.CreatedAt
        };
    }
}
