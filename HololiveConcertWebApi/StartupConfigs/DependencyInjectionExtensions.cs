using AspNetCoreRateLimit;
using HololiveConcertLibrary.Data;
using HololiveConcertLibrary.DataAccess;
using Microsoft.AspNetCore.Authorization;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System.Text;

namespace HololiveConcertWebApi.StartupConfigs;

public static class DependencyInjectionExtensions
{
	public static void AddStandardDefaultServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddControllers();
		builder.Services.AddEndpointsApiExplorer();

		builder.AddSwaggerServicesAndOptions();
	}

	private static void AddSwaggerServicesAndOptions(this WebApplicationBuilder builder)
	{
		var securityScheme = new OpenApiSecurityScheme()
		{
			Name = "Authorization",
			Description = "JWT Authorization header info using bearer tokens",
			In = ParameterLocation.Header,
			Type = SecuritySchemeType.Http,
			Scheme = "bearer",
			BearerFormat = "JWT"
		};

		var securityRequirement = new OpenApiSecurityRequirement
		{
			{
				new OpenApiSecurityScheme
				{
					Reference = new OpenApiReference
					{
						Type = ReferenceType.SecurityScheme,
						Id = "bearerAuth"
					}
			},
				new string[]
				{

				}
			}
		};

		builder.Services.AddSwaggerGen(opts =>
		{
			opts.AddSecurityDefinition("bearerAuth", securityScheme);
			opts.AddSecurityRequirement(securityRequirement);
		});
	}

	public static void AddCustomDataServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddSingleton<ISqlDataAccess, SqlDataAccess>();		
		builder.Services.AddSingleton<ITalentData, TalentData>();
		builder.Services.AddSingleton<IConcertData, ConcertData>();
		builder.Services.AddSingleton<IPerformanceData, PerformanceData>();
	}

	public static void AddAuthServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddAuthorization(opts =>
		{
			opts.FallbackPolicy = new AuthorizationPolicyBuilder()
				.RequireAuthenticatedUser()
				.Build();
		});

		builder.Services.AddAuthentication("Bearer")
			.AddJwtBearer(opts =>
			{
				opts.TokenValidationParameters = new()
				{
					ValidateIssuer = true,
					ValidateAudience = true,
					ValidateIssuerSigningKey = true,
					ValidIssuer = builder.Configuration.GetValue<string>("Authentication:Issuer"),
					ValidAudience = builder.Configuration.GetValue<string>("Authentication:Audience"),
					IssuerSigningKey = new SymmetricSecurityKey(
						Encoding.ASCII.GetBytes(
						builder.Configuration.GetValue<string>("Authentication:SecretKey")))
				};
			});
	}

	public static void AddCachingServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddResponseCaching();
		builder.Services.AddMemoryCache();
	}

	public static void AddRateLimitServices(this WebApplicationBuilder builder)
	{
		builder.Services
			.Configure<IpRateLimitOptions>(
			builder.Configuration.GetSection("IpRateLimiting"));

		builder.Services.AddSingleton<IIpPolicyStore, MemoryCacheIpPolicyStore>();

		builder.Services
			.AddSingleton<IRateLimitCounterStore, MemoryCacheRateLimitCounterStore>();
		builder.Services
			.AddSingleton<IRateLimitConfiguration, RateLimitConfiguration>();

		builder.Services
			.AddSingleton<IProcessingStrategy, AsyncKeyLockProcessingStrategy>();

		builder.Services.AddInMemoryRateLimiting();
	}

	public static void AddHealthCheckServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddHealthChecks()
			.AddSqlServer(builder.Configuration.GetConnectionString("Default"));
	}
}
