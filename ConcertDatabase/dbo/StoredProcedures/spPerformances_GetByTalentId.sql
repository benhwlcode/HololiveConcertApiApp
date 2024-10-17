CREATE PROCEDURE [dbo].[spPerformances_GetByTalentId]
	@id int
AS

begin

	set nocount on

	select p.ActNumber, p.SongName, p.IsHololiveOriginal,
		t.FirstName, t.LastName, p.IsGroupPerformance,
		c.EventName, c.ConcertName, c.StageName, c.ConcertDate

	from Performances p

	inner join Talents t on t.Id = p.TalentId
	inner join Concerts c on c.Id = p.ConcertId

	where t.Id = @id	

end
