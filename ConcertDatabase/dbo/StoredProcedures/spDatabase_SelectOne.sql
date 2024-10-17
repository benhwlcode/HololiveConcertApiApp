CREATE PROCEDURE [dbo].[spDatabase_SelectOne]

AS

begin

	set nocount on

	select top 1 Id from Performances

end
