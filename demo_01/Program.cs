using demo_01.Data;
using demo_01.Data.Mongo;
using demo_01.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.Configure<MongoDbSettings>(
    builder.Configuration.GetSection("MongoDbSettings"));

builder.Services.AddScoped<ISumService, SumService>();

var provider = builder.Configuration["Persistence:Provider"]?.ToLowerInvariant() ?? "sql";
if (provider == "mongo")
{
    builder.Services.AddScoped<ISumRepository, MongoSumRepository>();
}
else
{
    builder.Services.AddScoped<ISumRepository, SqlSumRepository>();
}

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
