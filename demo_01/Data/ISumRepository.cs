using demo_01.Models;

namespace demo_01.Data
{
    public interface ISumRepository
    {
        Task<SumResponse> SaveSumAsync(int nuermoA, int numeroB, CancellationToken ct = default);
        Task<SumResponse?> GetByIdAsync(string id, CancellationToken ct = default);
    }
}
