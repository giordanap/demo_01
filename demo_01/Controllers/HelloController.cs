using Azure.Core;
using demo_01.Models;
using demo_01.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace demo_01.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HelloController : ControllerBase
    {
        private readonly ISumService _service;

        public HelloController(ISumService service)
        {
            _service = service;
        }

        // GET: /api/hello
        [HttpGet]
        public ActionResult<string> Get()
        {
            return Ok("Hola desde mi API .NET 8 con controllers 👋 2");
        }

        [HttpGet("{id}")]
        [Authorize(Policy = "CanReadSums")]
        public async Task<ActionResult<SumResponse>> GetById(string id, CancellationToken ct)
        {
            var response = await _service.GetById(id, ct);
            return Ok(response);
        }

        // POST: /api/sum
        [HttpPost]
        [Authorize(Policy = "CanWriteSums")]
        public async Task<ActionResult<SumResponse>> SumAndPersistAsync([FromBody] SumRequest request, CancellationToken ct)
        {
            var response = await _service.SumAndPersistAsync(request, ct);
            return Ok(response);
        }
    }
}
