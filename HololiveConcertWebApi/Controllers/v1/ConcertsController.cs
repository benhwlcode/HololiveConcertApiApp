using HololiveConcertLibrary.Data;
using HololiveConcertLibrary.Models;
using Microsoft.AspNetCore.Mvc;

namespace HololiveConcertWebApi.Controllers.v1;

[Route("api/[controller]")]
[ApiController]
public class ConcertsController : ControllerBase
{
	private readonly IConcertData _data;

	public ConcertsController(IConcertData data)
    {
		_data = data;
	}


    /// <summary>
    /// GET: api/Concerts
    /// returns a list of concerts
    /// </summary>
    /// <returns>
    /// [{Id, EventName, ConcertName, StageName}]
    /// </returns>
    [HttpGet]
	[
		ResponseCache(Duration = 10,
		Location = ResponseCacheLocation.Any,
		NoStore = false)
	]
	public async Task<ActionResult<List<ConcertModel>>> GetAllConcerts()
	{
		var result = await _data.GetAllConcerts();
		var output = result.ToList();
		return Ok(result);
	}
}
