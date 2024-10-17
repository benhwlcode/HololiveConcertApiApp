/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if not exists (select 1 from dbo.Talents)
begin
    
    insert into dbo.Talents (FirstName, LastName, Branch, Generation, IsActive)
    values

    ('Sora', 'Tokino', 'Japan', 'JP Generation 0', 1),
    ('Roboco', '', 'Japan', 'JP Generation 0', 1),
    ('Miko', 'Sakura', 'Japan', 'JP Generation 0', 1),
    ('Suisei', 'Hoshimachi', 'Japan', 'JP Generation 0', 1),
    ('AZKi', '', 'Japan', 'JP Generation 0', 1),

    ('Mel', 'Yozora', 'Japan', 'JP 1st Generation', 0),
    ('Fubuki', 'Shirakami', 'Japan', 'JP 1st Generation', 1),
    ('Matsuri', 'Natsuiro', 'Japan', 'JP 1st Generation', 1),
    ('Aki', 'Rosenthal', 'Japan', 'JP 1st Generation', 1),
    ('Haato', 'Akai', 'Japan', 'JP 1st Generation', 1),

    ('Aqua', 'Minato', 'Japan', 'JP 2nd Generation', 0),
    ('Shion', 'Murasaki', 'Japan', 'JP 2nd Generation', 1),
    ('Ayame', 'Nakiri', 'Japan', 'JP 2nd Generation', 1),
    ('Choco', 'Yuzuki', 'Japan', 'JP 2nd Generation', 1),
    ('Subaru', 'Oozora', 'Japan', 'JP 2nd Generation', 1),

    ('Mio', 'Ookami', 'Japan', 'JP Gamers', 1),
    ('Okayu', 'Nekomata', 'Japan', 'JP Gamers', 1),
    ('Korone', 'Inugami', 'Japan', 'JP Gamers', 1),

    ('Pekora', 'Usada', 'Japan', 'JP 3rd Generation', 1),
    ('Rushia', 'Uruha', 'Japan', 'JP 3rd Generation', 0),
    ('Flare', 'Shiranui', 'Japan', 'JP 3rd Generation', 1),
    ('Noel', 'Shirogane', 'Japan', 'JP 3rd Generation', 1),
    ('Marine', 'Houshou', 'Japan', 'JP 3rd Generation', 1),

    ('Kanata', 'Amane', 'Japan', 'JP 4th Generation', 1),
    ('Coco', 'Kiryu', 'Japan', 'JP 4th Generation', 0),
    ('Watame', 'Tsunomaki', 'Japan', 'JP 4th Generation', 1),
    ('Towa', 'Tokoyami', 'Japan', 'JP 4th Generation', 1),
    ('Luna', 'Himemori', 'Japan', 'JP 4th Generation', 1),

    ('Risu', 'Ayunda', 'Indonesia', 'ID 1st Generation', 1),
    ('Moona', 'Hoshinova', 'Indonesia', 'ID 1st Generation', 1),
    ('Airani', 'Iofifteen', 'Indonesia', 'ID 1st Generation', 1),

    ('Lamy', 'Yukihana', 'Japan', 'JP 5th Generation', 1),
    ('Nene', 'Momosuzu', 'Japan', 'JP 5th Generation', 1),
    ('Botan', 'Shishiro', 'Japan', 'JP 5th Generation', 1),
    ('Polka', 'Omaru', 'Japan', 'JP 5th Generation', 1),

    ('Calliope', 'Mori', 'English', 'Myth', 1),
    ('Kiara', 'Takanashi', 'English', 'Myth', 1),
    ('Inanis', 'Ninomae', 'English', 'Myth', 1),
    ('Gura', 'Gawr', 'English', 'Myth', 1),
    ('Amelia', 'Watson', 'English', 'Myth', 1),

    ('Ollie', 'Kureiji', 'Indonesia', 'ID 2nd Generation', 1),
    ('Anya', 'Melfissa', 'Indonesia', 'ID 2nd Generation', 1),
    ('Reine', 'Pavolia', 'Indonesia', 'ID 2nd Generation', 1),

    ('IRyS', '', 'English', 'Project: HOPE', 1),

    ('Sana', 'Tsukumo', 'English', 'Council', 1),
    ('Fauna', 'Ceres', 'English', 'Council', 1),
    ('Kronii', 'Ouro', 'English', 'Council', 1),
    ('Mumei', 'Nanashi', 'English', 'Council', 1),
    ('Baelz', 'Hakos', 'English', 'Council', 1),

    ('La+', 'Darknesss', 'Japan', 'JP 6th Generation', 1),
    ('Lui', 'Takane', 'Japan', 'JP 6th Generation', 1),
    ('Koyori', 'Hakui', 'Japan', 'JP 6th Generation', 1),
    ('Chloe', 'Sakamata', 'Japan', 'JP 6th Generation', 1),
    ('Iroha', 'Kazama', 'Japan', 'JP 6th Generation', 1),

    ('Zeta', 'Vestia', 'Indonesia', 'ID 3rd Generation', 1),
    ('Kaela', 'Kovalskia', 'Indonesia', 'ID 3rd Generation', 1),
    ('Kobo', 'Kanaeru', 'Indonesia', 'ID 3rd Generation', 1),

    ('Shiori', 'Novella', 'English', 'Advent', 1),
    ('Bijou', 'Koseki', 'English', 'Advent', 1),
    ('Nerissa', 'Ravencroft', 'English', 'Advent', 1),
    ('Fuwawa', 'Abyssgard', 'English', 'Advent', 1),
    ('Mococo', 'Abyssgard', 'English', 'Advent', 1),

    ('Ao', 'Hiodoshi', 'DEV_IS', 'ReGLOSS', 1),
    ('Kanade', 'Otonose', 'DEV_IS', 'ReGLOSS', 1),
    ('Ririka', 'Ichijou', 'DEV_IS', 'ReGLOSS', 1),
    ('Raden', 'Juufuutei', 'DEV_IS', 'ReGLOSS', 1),

    ('Elizabeth', 'Rose Bloodflame', 'English', 'Justice', 1),
    ('Gigi', 'Murin', 'English', 'Justice', 1),
    ('Cecilia', 'Immergreen', 'English', 'Justice', 1),
    ('Raora', 'Panthera', 'English', 'Justice', 1)


end