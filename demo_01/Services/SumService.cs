using demo_01.Data;
using demo_01.Models;

namespace demo_01.Services
{
    public class SumService : ISumService
    {
        public readonly ISumRepository _repository;
        public readonly ILogger<SumService> _logger;
        public SumService(ISumRepository repository, ILogger<SumService> logger)
        {
            _repository = repository;
            _logger = logger;
        }
        public Task<SumResponse> SumAndPersistAsync(SumRequest request, CancellationToken ct = default)
        {
            try
            {
                checked
                {
                    _ = request.numeroA + request.numeroB;
                }
            }
            catch (OverflowException ex)
            {
                _logger.LogError(ex, "Overflow error while summing numbers {numeroA} and {numeroB}", request.numeroA, request.numeroB);
                throw new ArgumentOutOfRangeException("The sum of the provided numbers exceeds the allowed range.", ex);
            }

            var response = _repository.SaveSumAsync(request.numeroA, request.numeroB, ct);
            return response;
        }
    }
}
