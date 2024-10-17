CREATE PROCEDURE [dbo].[spConcerts_GetAll]

AS

begin
	
	set nocount on

	select c.Id, c.EventName, c.ConcertName, c.StageName
	from Concerts c

end
