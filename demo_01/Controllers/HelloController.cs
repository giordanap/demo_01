using demo_01.Models;
using demo_01.Services;
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

        [HttpGet]
        [Route("{id}")]
        public ActionResult<string> Get2(int id)
        {
            return Ok($"Hola {(id == 123 ? "chancher" : "otro")}, ¡bienvenido a la API!");
        }

        // POST: /api/sum
        [HttpPost]
        public async Task<ActionResult<SumResponse>> Post([FromBody] SumRequest request, CancellationToken ct)
        {
            var response = await _service.SumAndPersistAsync(request, ct);
            return Ok(response);
        }
    }
}
