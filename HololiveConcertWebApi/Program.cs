using AspNetCoreRateLimit;
using HololiveConcertWebApi.StartupConfigs;

var builder = WebApplication.CreateBuilder(args);

builder.AddStandardDefaultServices();

builder.AddCustomDataServices();

builder.AddCachingServices();

builder.AddRateLimitServices();

builder.AddHealthCheckServices();

builder.AddAuthServices();

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
	app.UseSwagger();
	app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseResponseCaching();

app.UseAuthorization();

app.MapControllers();

app.MapHealthChecks("/health").AllowAnonymous();

app.UseIpRateLimiting();

app.Run();
