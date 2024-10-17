using HololiveConcertLibrary.Models;

namespace HololiveConcertLibrary.Data
{
	public interface IConcertData
	{
		Task<IEnumerable<ConcertModel>> GetAllConcerts();
	}
}