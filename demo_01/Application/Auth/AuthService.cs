using demo_01.Domain.Users;
using demo_01.Infrastructure.Users;
using System.Security.Claims;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;

namespace demo_01.Application.Auth
{
    public sealed class AuthService
    {
        private readonly IUserRepository _repo;
        private readonly IPasswordHasher<User> _hasher;
        private readonly IConfiguration _cfg;

        public AuthService(IUserRepository repo, IPasswordHasher<User> hasher, IConfiguration cfg)
        { _repo = repo; _hasher = hasher; _cfg = cfg; }

        public async Task<string?> IssueTokenAsync(string username, string password, CancellationToken ct)
        {
            var u = await _repo.GetByUsernameAsync(username, ct);
            if (u is null || !u.IsActive) return null;

            var res = _hasher.VerifyHashedPassword(u, u.PasswordHash, password);
            if (res == PasswordVerificationResult.Failed) return null;

            var roles = u.Roles;
            var claims = new List<Claim>
        {
            new(JwtRegisteredClaimNames.Sub, u.Id.ToString()),
            new(ClaimTypes.Name, u.Username),
            new(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
        };
            claims.AddRange(roles.Select(r => new Claim(ClaimTypes.Role, r)));

            var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_cfg["Jwt:Key"]!));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var token = new JwtSecurityToken(
                issuer: _cfg["Jwt:Issuer"],
                audience: _cfg["Jwt:Audience"],
                claims: claims,
                notBefore: DateTime.UtcNow,
                expires: DateTime.UtcNow.AddHours(2),
                signingCredentials: creds);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        public async Task<Guid> RegisterAsync(string username, string password, bool isActive, IEnumerable<string> roles, CancellationToken ct)
        {
            var tmp = new User(); // solo para sal
            var hash = _hasher.HashPassword(tmp, password);
            var id = await _repo.CreateUserAsync(username, hash, isActive, ct);
            foreach (var r in roles) await _repo.AssignRoleAsync(id, r, ct);
            return id;
        }
    }

}
