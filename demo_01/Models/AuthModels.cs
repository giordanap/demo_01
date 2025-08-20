namespace demo_01.Models
{
    public record LoginRequest(string Username, string[] Roles);
    public record TokenResponse(string AccessToken);
}
