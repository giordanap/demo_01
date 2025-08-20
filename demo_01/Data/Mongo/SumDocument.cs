using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace demo_01.Data.Mongo
{
    public class SumDocument
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string? Id { get; set; }

        [BsonElement("numeroA")]
        public int NumeroA { get; set; }

        [BsonElement("numeroB")]
        public int NumeroB { get; set; }

        [BsonElement("result")]
        public int Result { get; set; }

        [BsonElement("createdAt")]
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }
}
