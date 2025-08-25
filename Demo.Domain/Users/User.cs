namespace Demo.Domain.Users;

public sealed class User
{
    public Guid Id { get; init; }
    public string Username { get; init; } = "";
    public string PasswordHash { get; init; } = "";
    public bool IsActive { get; init; } = true;
    public IReadOnlyList<string> Roles { get; init; } = Array.Empty<string>();
}
