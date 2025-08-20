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
            using var conn = new SqlConnection(_connectionString);
            using var cmd = new SqlCommand("dbo.SaveSum", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.Add(new SqlParameter("@numeroA", SqlDbType.Int) { Value = numeroA });
            cmd.Parameters.Add(new SqlParameter("@numeroB", SqlDbType.Int) { Value = numeroB });

            var pResult = new SqlParameter("@Result", SqlDbType.Int) { Direction = ParameterDirection.Output };
            var pNewId = new SqlParameter("@NewId", SqlDbType.Int) { Direction = ParameterDirection.Output };
            var pCreatedAt = new SqlParameter("@CreatedAt", SqlDbType.DateTime2) { Direction = ParameterDirection.Output };

            cmd.Parameters.Add(pResult);
            cmd.Parameters.Add(pNewId);
            cmd.Parameters.Add(pCreatedAt);

            await conn.OpenAsync();
            await cmd.ExecuteNonQueryAsync();

            return new SumResponse
            {
                numeroA = numeroA,
                numeroB = numeroB,
                Result = (int)pResult.Value,
                Id = (string)pNewId.Value,
                CreatedAt = (DateTime)pCreatedAt.Value
            };
        }
    }
}
