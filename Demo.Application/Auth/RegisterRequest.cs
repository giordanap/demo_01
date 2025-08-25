namespace Demo.Application.Auth;

public sealed class RegisterRequest
{
    public string Username { get; init; } = "";
    public string Password { get; init; } = "";
    public bool IsActive { get; init; } = true;
    public string[]? Roles { get; init; }
}
