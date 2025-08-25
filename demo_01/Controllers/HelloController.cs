using Demo.Application.Sums;
using Demo.Domain.Sums;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Demo.Api.Controllers;

[ApiController]
[Route("api/hello")]
public sealed class HelloController : ControllerBase
{
    private readonly ISumService _service;
    public HelloController(ISumService service) => _service = service;

    [HttpGet]
    [AllowAnonymous]
    public string Get() => "Hola desde Demo.Api";

    [HttpGet("{id}")]
    [Authorize(Policy = "CanReadSums")]
    public Task<SumEntry?> GetById([FromRoute] string id, CancellationToken ct)
        => _service.GetAsync(id, ct);

    public sealed class SumRequest { public int NumeroA { get; init; } public int NumeroB { get; init; } }

    [HttpPost]
    [Authorize(Policy = "CanWriteSums")]
    public Task<SumEntry> Create([FromBody] SumRequest req, CancellationToken ct)
        => _service.CreateAsync(req.NumeroA, req.NumeroB, ct);
}
