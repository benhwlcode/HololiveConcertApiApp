using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;


namespace HololiveConcertLibrary.DataAccess;

public class SqlDataAccess : ISqlDataAccess
{
	private readonly IConfiguration _config;

	public SqlDataAccess(IConfiguration config)
	{
		_config = config;
	}

	public async Task<IEnumerable<T>> LoadData<T, U>(
		string storedProcedure,
		U parameters,
		string connectionString = "Default")
	{
		string cnn = _config.GetConnectionString(connectionString);
		using IDbConnection connection = new SqlConnection(cnn);

		var rows = await connection.QueryAsync<T>(
			storedProcedure, parameters, commandType: CommandType.StoredProcedure);

		return rows;
	}

	public async Task SaveData<T>(
		string storedProcedure,
		T parameters,
		string connectionString = "Default")
	{
		string cnn = _config.GetConnectionString(connectionString);
		using IDbConnection connection = new SqlConnection(cnn);

		await connection.ExecuteAsync(
			storedProcedure, parameters, commandType: CommandType.StoredProcedure);
	}
}
