using Demo.Domain.Sums;

namespace Demo.Application.Sums;

public interface ISumService
{
    Task<SumEntry> CreateAsync(int a, int b, CancellationToken ct);
    Task<SumEntry?> GetAsync(string id, CancellationToken ct);
}
