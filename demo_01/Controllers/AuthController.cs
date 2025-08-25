using Demo.Application.Auth;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Demo.Api.Controllers;

[ApiController]
[Route("api/auth")]
public sealed class AuthController : ControllerBase
{
    private readonly AuthService _auth;
    private readonly IConfiguration _cfg;
    public AuthController(AuthService auth, IConfiguration cfg) { _auth = auth; _cfg = cfg; }

    [HttpPost("token")]
    [AllowAnonymous]
    public async Task<IActionResult> Token([FromBody] LoginRequest req, CancellationToken ct)
    {
        var jwt = await _auth.IssueTokenAsync(req.Username, req.Password, ct);
        return jwt is null ? Unauthorized() : Ok(new { access_token = jwt, token_type = "Bearer" });
    }

    [HttpPost("register")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> Register([FromBody] RegisterRequest req, CancellationToken ct)
    {
        var id = await _auth.RegisterAsync(req.Username, req.Password, req.IsActive, req.Roles ?? Array.Empty<string>(), ct);
        return CreatedAtAction(nameof(Register), new { id }, null);
    }

    // Bootstrap para crear el primer admin sin tocar la BD (habilítalo en appsettings/User Secrets)
    [HttpPost("bootstrap-admin")]
    [AllowAnonymous]
    public async Task<IActionResult> BootstrapAdmin([FromBody] RegisterRequest req, CancellationToken ct)
    {
        if (!_cfg.GetValue<bool>("BootstrapAdmin:Enabled"))
            return NotFound();

        var id = await _auth.RegisterAsync(req.Username, req.Password, true, new[] { "Admin" }, ct);
        return CreatedAtAction(nameof(BootstrapAdmin), new { id }, null);
    }
}
