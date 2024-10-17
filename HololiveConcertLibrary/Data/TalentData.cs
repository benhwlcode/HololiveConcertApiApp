using HololiveConcertLibrary.DataAccess;
using HololiveConcertLibrary.Models;

namespace HololiveConcertLibrary.Data;

public class TalentData : ITalentData
{
	private readonly ISqlDataAccess _sql;

	public TalentData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public Task<IEnumerable<TalentModel>> GetAllTalents()
	{
		var p = new { };

		var results = _sql.LoadData<TalentModel, dynamic>(
			"dbo.spTalents_GetAll", p);

		return results;
	}
}
