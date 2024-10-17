using HololiveConcertLibrary.Models;

namespace HololiveConcertLibrary.Data
{
	public interface ITalentData
	{
		Task<IEnumerable<TalentModel>> GetAllTalents();
	}
}