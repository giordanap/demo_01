namespace Demo.Domain.Sums;

public sealed class SumEntry
{
    public string Id { get; init; } = "";
    public int NumeroA { get; init; }
    public int NumeroB { get; init; }
    public int Result { get; init; }
    public DateTime CreatedAtUtc { get; init; }
}
