CREATE TABLE [dbo].[Concerts]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,     
    [EventName] NVARCHAR(50) NOT NULL, 
    [ConcertName] NVARCHAR(50) NOT NULL,
    [StageName] NVARCHAR(50) NOT NULL, 
    [ConcertDate] DATE NOT NULL
    
)
