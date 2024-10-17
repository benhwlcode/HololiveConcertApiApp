CREATE TABLE [dbo].[Performances]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ActNumber] INT NOT NULL, 
    [SongName] NVARCHAR(50) NOT NULL, 
    [IsHololiveOriginal] BIT NOT NULL, 
    [TalentId] INT NOT NULL, 
    [IsGroupPerformance] BIT NOT NULL, 
    [ConcertId] INT NOT NULL, 
    CONSTRAINT [FK_Performances_Talents] FOREIGN KEY (TalentId) REFERENCES dbo.Talents(Id), 
    CONSTRAINT [FK_Performances_Concerts] FOREIGN KEY (ConcertId) REFERENCES dbo.Concerts(Id)
)
