using HololiveConcertLibrary.Models;

namespace HololiveConcertLibrary.Data
{
	public interface IPerformanceData
	{
		Task<IEnumerable<PerformanceModel>> GetAllPerformances();
		Task<IEnumerable<PerformanceModel>> GetAllPerformancesWithPagination(int page);
		Task<IEnumerable<PerformanceModel>> GetByConcertId(int id);
		Task<IEnumerable<PerformanceModel>> GetByTalentId(int id);
	}
}