using demo_01.Application.Auth;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace demo_01.Controllers
{
    [ApiController]
    [Route("api/auth")]
    public sealed class AuthController : ControllerBase
    {
        private readonly AuthService _auth;
        public AuthController(AuthService auth) => _auth = auth;

        [HttpPost("token")]
        [AllowAnonymous]
        public async Task<IActionResult> Token([FromBody] LoginRequest req, CancellationToken ct)
        {
            var jwt = await _auth.IssueTokenAsync(req.Username, req.Password, ct);
            return jwt is null ? Unauthorized() : Ok(new { access_token = jwt, token_type = "Bearer" });
        }

        // Solo admin puede crear usuarios (ajusta política/rol según tu gusto)
        [HttpPost("register")]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Register([FromBody] RegisterRequest req, CancellationToken ct)
        {
            var id = await _auth.RegisterAsync(req.Username, req.Password, req.IsActive, req.Roles ?? Array.Empty<string>(), ct);
            return CreatedAtAction(nameof(Register), new { id }, null);
        }
    }

    public sealed class RegisterRequest
    {
        public string Username { get; init; } = "";
        public string Password { get; init; } = "";
        public bool IsActive { get; init; } = true;
        public string[]? Roles { get; init; }
    }

}
