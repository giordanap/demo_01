namespace Demo.Application.Auth;

public sealed class LoginRequest
{
    public string Username { get; init; } = "";
    public string Password { get; init; } = "";
}
