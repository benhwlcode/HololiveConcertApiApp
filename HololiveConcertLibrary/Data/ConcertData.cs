using HololiveConcertLibrary.DataAccess;
using HololiveConcertLibrary.Models;

namespace HololiveConcertLibrary.Data;

public class ConcertData : IConcertData
{
	private readonly ISqlDataAccess _sql;

	public ConcertData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public Task<IEnumerable<ConcertModel>> GetAllConcerts()
	{
		var p = new { };

		var results = _sql.LoadData<ConcertModel, dynamic>(
			"dbo.spConcerts_GetAll", p);

		return results;
	}

}
