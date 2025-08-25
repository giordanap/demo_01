using Demo.Domain.Sums;

namespace Demo.Application.Sums;

public sealed class SumService : ISumService
{
    private readonly ISumRepository _repo;
    public SumService(ISumRepository repo) => _repo = repo;

    public async Task<SumEntry> CreateAsync(int a, int b, CancellationToken ct)
    {
        var result = a + b;
        var id = await _repo.SaveAsync(a, b, result, ct);
        return new SumEntry
        {
            Id = id,
            NumeroA = a,
            NumeroB = b,
            Result = result,
            CreatedAtUtc = DateTime.UtcNow
        };
    }

    public Task<SumEntry?> GetAsync(string id, CancellationToken ct)
        => _repo.GetByIdAsync(id, ct);
}
