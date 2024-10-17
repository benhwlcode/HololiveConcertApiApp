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

if not exists (select 1 from dbo.Concerts)
begin

    insert into dbo.Concerts (EventName, ConcertName, StageName, Date)
    values

    ('hololive 1st Fes.', 'Nonstop Story', 'Stage 1', '2020-01-24'),

    ('hololive 2nd Fes.', 'Beyond the Stage', 'Stage 1', '2020-12-21'),
    ('hololive 2nd Fes.', 'Beyond the Stage', 'Stage 2', '2020-12-22'),

    ('hololive 3rd Fes.', 'Link Your Wish', 'Stage 1', '2022-03-19'),
    ('hololive 3rd Fes.', 'Link Your Wish', 'Stage 2', '2022-03-20'),

    ('hololive 4th Fes.', 'Our Bright Parade', 'Stage 1', '2023-03-18'),
    ('hololive 4th Fes.', 'Our Bright Parade', 'holo27 Stage', '2023-03-19'),
    ('hololive 4th Fes.', 'Our Bright Parade', 'Stage 2', '2023-03-19'),

    ('hololive 5th Fes.', 'Capture the Moment', 'Stage 1', '2024-03-16'),
    ('hololive 5th Fes.', 'Capture the Moment', 'Stage 2', '2024-03-16'),
    ('hololive 5th Fes.', 'Capture the Moment', 'HoneyWorks Stage', '2024-03-17'),
    ('hololive 5th Fes.', 'Capture the Moment', 'Stage 3', '2024-03-17')

end