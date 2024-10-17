CREATE PROCEDURE [dbo].[spPerformances_GetAllWithPagination]
	@page int
AS

begin
	
	set nocount on

	declare @pageSize int = 50;

	select p.ActNumber, p.SongName, p.IsHololiveOriginal,
		t.FirstName, t.LastName, p.IsGroupPerformance,
		c.EventName, c.ConcertName, c.StageName, c.ConcertDate

	from Performances p

	inner join Talents t on t.Id = p.TalentId
	inner join Concerts c on c.Id = p.ConcertId

	order by c.ConcertDate, p.ActNumber
	offset (@page - 1) * 50 rows
	fetch next @pageSize rows only;

end
