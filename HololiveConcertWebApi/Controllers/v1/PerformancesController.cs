using HololiveConcertLibrary.Data;
using HololiveConcertLibrary.Models;
using Microsoft.AspNetCore.Mvc;

namespace HololiveConcertWebApi.Controllers.v1;

[Route("api/[controller]")]
[ApiController]
public class PerformancesController : ControllerBase
{
	private readonly IPerformanceData _data;

	public PerformancesController(IPerformanceData data)
    {
		_data = data;
	}

    /// <summary>
    /// GET: api/Performance
    /// returns an array of all performances
    /// </summary>
    /// <returns>
    /// [{ActNumber, SongName, IsHololiveOriginal, FirstName, LastName, IsGroupPerformance, EventName, ConcertName, StageName, ConcertDate}]
    /// </returns>
    [HttpGet]
	[
		ResponseCache(Duration = 10,
		Location = ResponseCacheLocation.Any,
		NoStore = false)
	]
	public async Task<ActionResult<List<PerformanceModel>>> GetAllPerformances()
	{
		var result = await _data.GetAllPerformances();
		var output = result.ToList();
		return Ok(result);
	}

	/// <summary>
	/// GET: api/Performance/{page}
	/// returns an array of 50 performances per page
	/// </summary>
	/// <returns>
	/// [{ActNumber, SongName, IsHololiveOriginal, FirstName, LastName, IsGroupPerformance, EventName, ConcertName, StageName, ConcertDate}]
	/// </returns>
	[HttpGet("{page}")]
	[
		ResponseCache(Duration = 10,
		Location = ResponseCacheLocation.Any,
		NoStore = false)
	]
	public async Task<ActionResult<List<PerformanceModel>>> GetAllPerformancesWithPagination(int page)
	{
		var result = await _data.GetAllPerformancesWithPagination(page);
		var output = result.ToList();
		return Ok(result);
	}


	/// <summary>
	/// GET: api/Performance/Talent/{id}
	/// returns an array of performances of a talent
	/// </summary>
	/// <returns>
	/// [{ActNumber, SongName, IsHololiveOriginal, FirstName, LastName, IsGroupPerformance, EventName, ConcertName, StageName, ConcertDate}]
	/// </returns>
	[HttpGet("Talent/{id}")]
	[
		ResponseCache(Duration = 10,
		Location = ResponseCacheLocation.Any,
		NoStore = false)
	]
	public async Task<ActionResult<List<PerformanceModel>>> GetTalentPerformances(int id)
    {
		var result = await _data.GetByTalentId(id);
		var output = result.ToList();
		return Ok(result);
	}

	/// <summary>
	/// GET: api/Performance/Concert/{id}
	/// returns an array of performances of a concert
	/// </summary>
	/// <returns>
	/// [{ActNumber, SongName, IsHololiveOriginal, FirstName, LastName, IsGroupPerformance, EventName, ConcertName, StageName, ConcertDate}]
	/// </returns>
	[HttpGet("Concert/{id}")]
	[
		ResponseCache(Duration = 10,
		Location = ResponseCacheLocation.Any,
		NoStore = false)
	]
	public async Task<ActionResult<List<PerformanceModel>>> GetConcertPerformances(int id)
    {
		var result = await _data.GetByConcertId(id);
		var output = result.ToList();
		return Ok(result);
	}

}
