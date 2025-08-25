using Demo.Application.Sums;
using Demo.Domain.Sums;
using Demo.Infrastructure.Persistence;
using MongoDB.Bson;
using MongoDB.Driver;

namespace Demo.Infrastructure.Sums;

public sealed class MongoSumRepository : ISumRepository
{
    private readonly IMongoCollection<BsonDocument> _col;

    public MongoSumRepository(DualDbContext ctx)
    {
        var db = ctx.MongoDatabase;
        _col = db.GetCollection<BsonDocument>(ctx.MongoOptions.SumsCollection);
        // índice por defecto _id OK. Si quieres, agrega createdAt index:
        _col.Indexes.CreateOne(new CreateIndexModel<BsonDocument>(
            Builders<BsonDocument>.IndexKeys.Descending("createdAt")));
    }

    public async Task<string> SaveAsync(int a, int b, int result, CancellationToken ct)
    {
        var doc = new BsonDocument
        {
            { "numeroA", a },
            { "numeroB", b },
            { "result", result },
            { "createdAt", DateTime.UtcNow }
        };
        await _col.InsertOneAsync(doc, cancellationToken: ct);
        return doc["_id"].ToString(); // ObjectId string
    }

    public async Task<SumEntry?> GetByIdAsync(string id, CancellationToken ct)
    {
        // Compatibilidad con datos existentes: ObjectId
        if (!ObjectId.TryParse(id, out var oid)) return null;
        var doc = await _col.Find(Builders<BsonDocument>.Filter.Eq("_id", oid)).FirstOrDefaultAsync(ct);
        if (doc is null) return null;

        return new SumEntry
        {
            Id = doc["_id"].ToString(),
            NumeroA = doc.GetValue("numeroA", 0).ToInt32(),
            NumeroB = doc.GetValue("numeroB", 0).ToInt32(),
            Result = doc.GetValue("result", 0).ToInt32(),
            CreatedAtUtc = doc.GetValue("createdAt", BsonNull.Value).IsBsonDateTime
                ? doc["createdAt"].ToUniversalTime()
                : DateTime.UtcNow
        };
    }
}
