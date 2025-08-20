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

        public async Task<SumResponse> GetById(string id, CancellationToken ct = default)
        {
            if (string.IsNullOrWhiteSpace(id))
                throw new ArgumentException("Id must not be null or empty.", nameof(id));

            ct.ThrowIfCancellationRequested();

            using var _ = _logger.BeginScope(new { id });
            _logger.LogDebug("Fetching sum by id...");

            var result = await _repository.GetByIdAsync(id, ct).ConfigureAwait(false);
            if (result is null)
            {
                _logger.LogWarning("Sum not found for id {Id}", id);
                throw new KeyNotFoundException($"Sum with id '{id}' was not found.");
            }

            _logger.LogInformation("Sum retrieved for id {Id}", id);
            return result;
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
