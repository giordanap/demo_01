using Demo.Domain.Sums;

namespace Demo.Application.Sums;

public interface ISumRepository
{
    Task<string> SaveAsync(int a, int b, int result, CancellationToken ct);
    Task<SumEntry?> GetByIdAsync(string id, CancellationToken ct);
}
