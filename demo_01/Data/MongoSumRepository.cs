using demo_01.Data.Mongo;
using demo_01.Models;
using Microsoft.Extensions.Options;
using MongoDB.Driver;

namespace demo_01.Data
{
    public class MongoSumRepository : ISumRepository
    {
        public readonly IMongoCollection<SumDocument> _collection;

        public MongoSumRepository(IOptions<MongoDbSettings> options)
        {
            var config = options.Value;
            var client = new MongoClient(config.ConnectionString);
            var database = client.GetDatabase(config.DatabaseName);
            _collection = database.GetCollection<SumDocument>(config.CollectionName);
        }

        public async Task<SumResponse> SaveSumAsync(int numeroA, int numeroB, CancellationToken ct = default)
        {
            var doc = new SumDocument
            {
                NumeroA = numeroA,
                NumeroB = numeroB,
                Result = checked(numeroA + numeroB),
                CreatedAt = DateTime.UtcNow
            };

            await _collection.InsertOneAsync(doc, cancellationToken: ct);

            return new SumResponse
            {
                numeroA = numeroA,
                numeroB = numeroB,
                Result = doc.Result,
                Id = doc.Id,
                CreatedAt = doc.CreatedAt
            };
        }

        public async Task<SumResponse?> GetByIdAsync(string id, CancellationToken ct = default)
        {
            var doc = await _collection.Find(d => d.Id == id).FirstOrDefaultAsync(ct);
            if (doc is null) return null;

            return new SumResponse
            {
                Id = doc.Id,
                numeroA = doc.NumeroA,
                numeroB = doc.NumeroB,
                Result = doc.Result,
                CreatedAt = doc.CreatedAt
            };
        }
    }
}
