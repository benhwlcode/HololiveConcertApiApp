CREATE PROCEDURE [dbo].[spTalents_GetAll]

AS

begin
	
	set nocount on

	select t.Id, t.FirstName, t.LastName
	from Talents t

end
