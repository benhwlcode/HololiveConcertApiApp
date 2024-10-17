using HololiveConcertLibrary.DataAccess;
using HololiveConcertLibrary.Models;

namespace HololiveConcertLibrary.Data;

public class PerformanceData : IPerformanceData
{
	private readonly ISqlDataAccess _sql;

	public PerformanceData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public Task<IEnumerable<PerformanceModel>> GetAllPerformances()
	{
		var p = new { };

		var results = _sql.LoadData<PerformanceModel, dynamic>(
			"dbo.spPerformances_GetAll", p);

		return results;
	}

	public Task<IEnumerable<PerformanceModel>> GetAllPerformancesWithPagination(int page)
	{
		var p = new { page };

		var results = _sql.LoadData<PerformanceModel, dynamic>(
			"dbo.spPerformances_GetAllWithPagination", p);

		return results;
	}

	public Task<IEnumerable<PerformanceModel>> GetByTalentId(int id)
	{
		var p = new { id };

		var results = _sql.LoadData<PerformanceModel, dynamic>(
			"dbo.spPerformances_GetByTalentId", p);

		return results;
	}

	public Task<IEnumerable<PerformanceModel>> GetByConcertId(int id)
	{
		var p = new { id };

		var results = _sql.LoadData<PerformanceModel, dynamic>(
			"dbo.spPerformances_GetByConcertId", p);

		return results;
	}
}
