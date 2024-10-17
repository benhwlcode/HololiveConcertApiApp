using HololiveConcertLibrary.Data;
using HololiveConcertLibrary.Models;
using Microsoft.AspNetCore.Mvc;

namespace HololiveConcertWebApi.Controllers.v1;

[Route("api/[controller]")]
[ApiController]
public class TalentsController : ControllerBase
{
	private readonly ITalentData _data;

	public TalentsController(ITalentData data)
    {
		_data = data;
	}


    /// <summary>
    /// GET: api/Talents
    /// returns a list of talents
    /// </summary>
    /// <returns>
    /// [{Id, FirstName, LastName}]
    /// </returns>
    [HttpGet]
	[
		ResponseCache(Duration = 10,
		Location = ResponseCacheLocation.Any,
		NoStore = false)
	]
	public async Task<ActionResult<List<TalentModel>>> GetAllTalents()
    {
        var result = await _data.GetAllTalents();
        var output = result.ToList();
        return Ok(result);
    }


}
