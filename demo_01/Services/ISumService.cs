using demo_01.Models;

namespace demo_01.Services
{
    public interface ISumService
    {
        Task<SumResponse> GetById(string id, CancellationToken ct = default);
        Task<SumResponse> SumAndPersistAsync(SumRequest request, CancellationToken ct = default);
    }
}
