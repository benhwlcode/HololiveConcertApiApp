CREATE TABLE [dbo].[Talents]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NULL, 
    [Branch] NVARCHAR(50) NOT NULL, 
    [Generation] NVARCHAR(50) NOT NULL, 
    [IsActive] BIT NOT NULL
)
