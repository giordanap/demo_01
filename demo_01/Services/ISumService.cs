using demo_01.Models;

namespace demo_01.Services
{
    public interface ISumService
    {
        Task<SumResponse> SumAndPersistAsync(SumRequest request, CancellationToken ct = default);
    }
}
