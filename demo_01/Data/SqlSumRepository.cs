using demo_01.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace demo_01.Data
{
    public class SqlSumRepository : ISumRepository
    {
        public readonly string _connectionString;
        public SqlSumRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection")
                ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
        }

        public async Task<SumResponse> SaveSumAsync(int numeroA, int numeroB, CancellationToken ct = default)
        {
            await using var conn = new SqlConnection(_connectionString);
            await using var cmd = new SqlCommand("dbo.SaveSum", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.Add(new SqlParameter("@numeroA", SqlDbType.Int) { Value = numeroA });
            cmd.Parameters.Add(new SqlParameter("@numeroB", SqlDbType.Int) { Value = numeroB });

            // Outputs alineados al SP
            var pResult = new SqlParameter("@Result", SqlDbType.Int) { Direction = ParameterDirection.Output };
            var pNewId = new SqlParameter("@NewId", SqlDbType.UniqueIdentifier) { Direction = ParameterDirection.Output };
            var pCreatedAt = new SqlParameter("@CreatedAt", SqlDbType.DateTime2) { Direction = ParameterDirection.Output };

            cmd.Parameters.Add(pResult);
            cmd.Parameters.Add(pNewId);
            cmd.Parameters.Add(pCreatedAt);

            await conn.OpenAsync(ct).ConfigureAwait(false);
            await cmd.ExecuteNonQueryAsync(ct).ConfigureAwait(false);

            var newId = (Guid)pNewId.Value;
            var createdAt = (DateTime)pCreatedAt.Value;
            var result = (int)pResult.Value;

            return new SumResponse
            {
                Id = newId.ToString(),
                numeroA = numeroA,
                numeroB = numeroB,
                Result = result,
                CreatedAt = createdAt
            };
        }


        public async Task<SumResponse?> GetByIdAsync(string id, CancellationToken ct = default)
        {
            if (!Guid.TryParse(id, out var guid))
                return null;

            using var conn = new SqlConnection(_connectionString);
            using var cmd = new SqlCommand("dbo.GetSumById", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.UniqueIdentifier) { Value = guid });

            await conn.OpenAsync(ct);
            using var rd = await cmd.ExecuteReaderAsync(ct);
            if (!await rd.ReadAsync(ct)) return null;

            return new SumResponse
            {
                Id = rd.GetGuid(0).ToString(),
                numeroA = rd.GetInt32(1),
                numeroB = rd.GetInt32(2),
                Result = rd.GetInt32(3),
                CreatedAt = rd.GetDateTime(4)
            };
        }
    }
}
