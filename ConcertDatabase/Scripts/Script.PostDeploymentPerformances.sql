﻿/*
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

if not exists (select 1 from dbo.Performances)
begin

    insert into dbo.Performances 
        (ActNumber, SongName, IsHololiveOriginal, 
        TalentId, IsGroupPerformance, ConcertId)

    values

    -- 1st Fes
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Shiny Smily Story', 1, 1, 1, 1),
    (1, 'Shiny Smily Story', 1, 2, 1, 1),
    (1, 'Shiny Smily Story', 1, 3, 1, 1),
    (1, 'Shiny Smily Story', 1, 4, 1, 1),
    (1, 'Shiny Smily Story', 1, 5, 1, 1),
    (1, 'Shiny Smily Story', 1, 6, 1, 1),
    (1, 'Shiny Smily Story', 1, 7, 1, 1),
    (1, 'Shiny Smily Story', 1, 8, 1, 1),
    (1, 'Shiny Smily Story', 1, 9, 1, 1),
    (1, 'Shiny Smily Story', 1, 10, 1, 1),
    (1, 'Shiny Smily Story', 1, 11, 1, 1),
    (1, 'Shiny Smily Story', 1, 12, 1, 1),
    (1, 'Shiny Smily Story', 1, 13, 1, 1),
    (1, 'Shiny Smily Story', 1, 14, 1, 1),
    (1, 'Shiny Smily Story', 1, 15, 1, 1),
    (1, 'Shiny Smily Story', 1, 16, 1, 1),
    (1, 'Shiny Smily Story', 1, 17, 1, 1),
    (1, 'Shiny Smily Story', 1, 18, 1, 1),
    (1, 'Shiny Smily Story', 1, 19, 1, 1),
    (1, 'Shiny Smily Story', 1, 20, 1, 1),
    (1, 'Shiny Smily Story', 1, 21, 1, 1),
    (1, 'Shiny Smily Story', 1, 22, 1, 1),
    (1, 'Shiny Smily Story', 1, 23, 1, 1),

    (2, 'Fansa', 0, 8, 0, 1),
    (3, 'fancy baby doll', 0, 19, 0, 1),
    (4, 'Stickybug', 0, 14, 0, 1),
    (5, 'Petal', 0, 2, 0, 1),
    (6, 'All Night Thinking of You', 0, 16, 0, 1),
    (7, 'Momoiro Kataomoi', 0, 11, 0, 1),
    (8, 'This is the Happiness and Peace of Mind Committee', 0, 18, 0, 1),
    (9, '13', 0, 20, 0, 1),
    (10, 'Celestial Sphere, Comets That Straddle The Night', 1, 4, 0, 1),
    (11, 'I, An Idol Declaration ', 0, 10, 0, 1),
    (12, 'Planet Loop ', 0, 17, 0, 1),
    (13, 'Friday''s Good Morning', 0, 15, 0, 1),
    (14, 'without U', 1, 5, 0, 1),
    (15, 'Senbonzakura', 0, 13, 0, 1),
    (16, 'Lost my music', 0, 23, 0, 1),
    (17, 'Shallys', 1, 9, 0, 1),
    (18, 'Solar System Disco', 0, 22, 0, 1),
    (19, 'Say! Fanfare!', 1, 7, 0, 1),
    (20, 'BOOO!', 0, 12, 0, 1),
    (21, 'A Born Coward', 0, 21, 0, 1),
    (22, 'My name is elite☆', 1, 3, 0, 1),
    (23, 'Hibana', 0, 6, 0, 1),
    (24, 'Hurray Hurray LOVE', 0, 1, 0, 1),

    (25, 'Dream☆Story', 1, 1, 1, 1),
    (25, 'Dream☆Story', 1, 2, 1, 1),
    (25, 'Dream☆Story', 1, 3, 1, 1),
    (25, 'Dream☆Story', 1, 4, 1, 1),
    (25, 'Dream☆Story', 1, 5, 1, 1),

    (26, 'Yumemiru Sora e', 1, 6, 1, 1),
    (26, 'Yumemiru Sora e', 1, 7, 1, 1),
    (26, 'Yumemiru Sora e', 1, 8, 1, 1),
    (26, 'Yumemiru Sora e', 1, 9, 1, 1),
    (26, 'Yumemiru Sora e', 1, 10, 1, 1),

    (27, 'Go-toubun no Kimochi', 0, 11, 1, 1),
    (27, 'Go-toubun no Kimochi', 0, 12, 1, 1),
    (27, 'Go-toubun no Kimochi', 0, 13, 1, 1),
    (27, 'Go-toubun no Kimochi', 0, 14, 1, 1),
    (27, 'Go-toubun no Kimochi', 0, 15, 1, 1),

    (28, 'Shin Takarajima', 0, 7, 1, 1),
    (28, 'Shin Takarajima', 0, 16, 1, 1),
    (28, 'Shin Takarajima', 0, 17, 1, 1),
    (28, 'Shin Takarajima', 0, 18, 1, 1),

    (29, 'CONNECTING', 0, 19, 1, 1),
    (29, 'CONNECTING', 0, 20, 1, 1),
    (29, 'CONNECTING', 0, 21, 1, 1),
    (29, 'CONNECTING', 0, 22, 1, 1),
    (29, 'CONNECTING', 0, 23, 1, 1),

    (30, 'Kimagure Mercy', 0, 1, 1, 1),
    (30, 'Kimagure Mercy', 0, 7, 1, 1),
    (30, 'Kimagure Mercy', 0, 11, 1, 1),

    (31, 'Kirameki Rider', 1, 1, 1, 1),
    (31, 'Kirameki Rider', 1, 2, 1, 1),
    (31, 'Kirameki Rider', 1, 3, 1, 1),
    (31, 'Kirameki Rider', 1, 4, 1, 1),
    (31, 'Kirameki Rider', 1, 5, 1, 1),
    (31, 'Kirameki Rider', 1, 6, 1, 1),
    (31, 'Kirameki Rider', 1, 7, 1, 1),
    (31, 'Kirameki Rider', 1, 8, 1, 1),
    (31, 'Kirameki Rider', 1, 9, 1, 1),
    (31, 'Kirameki Rider', 1, 10, 1, 1),
    (31, 'Kirameki Rider', 1, 11, 1, 1),
    (31, 'Kirameki Rider', 1, 12, 1, 1),
    (31, 'Kirameki Rider', 1, 13, 1, 1),
    (31, 'Kirameki Rider', 1, 14, 1, 1),
    (31, 'Kirameki Rider', 1, 15, 1, 1),
    (31, 'Kirameki Rider', 1, 16, 1, 1),
    (31, 'Kirameki Rider', 1, 17, 1, 1),
    (31, 'Kirameki Rider', 1, 18, 1, 1),
    (31, 'Kirameki Rider', 1, 19, 1, 1),
    (31, 'Kirameki Rider', 1, 20, 1, 1),
    (31, 'Kirameki Rider', 1, 21, 1, 1),
    (31, 'Kirameki Rider', 1, 22, 1, 1),
    (31, 'Kirameki Rider', 1, 23, 1, 1),

    -- 2nd Fes part 1
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Senbonzakura', 0, 24, 1, 2),
    (1, 'Senbonzakura', 0, 25, 1, 2),
    (1, 'Senbonzakura', 0, 26, 1, 2),
    (1, 'Senbonzakura', 0, 27, 1, 2),
    (1, 'Senbonzakura', 0, 28, 1, 2),

    (2, 'ERROR', 0, 27, 0, 2),
    (3, 'ECHO', 0, 25, 0 ,2),
    (4, 'Ai-mai Chocolate', 0, 26, 0, 2),

    (5, 'Shiny Smily Story', 1, 1, 1, 2),
    (5, 'Shiny Smily Story', 1, 3, 1, 2),
    (5, 'Shiny Smily Story', 1, 5, 1, 2),
    (5, 'Shiny Smily Story', 1, 6, 1, 2),
    (5, 'Shiny Smily Story', 1, 10, 1, 2),
    (5, 'Shiny Smily Story', 1, 11, 1, 2),
    (5, 'Shiny Smily Story', 1, 12, 1, 2),
    (5, 'Shiny Smily Story', 1, 14, 1, 2),
    (5, 'Shiny Smily Story', 1, 19, 1, 2),
    (5, 'Shiny Smily Story', 1, 20, 1, 2),
    (5, 'Shiny Smily Story', 1, 23, 1, 2),

    (6, 'Ahoy!! Warera Houshou kaizoku-dan☆', 1, 23, 0, 2),
    (7, 'Aozora no Rhapsody', 0, 19, 0, 2),
    (8, 'Koi no Sainou', 0, 20, 0, 2),
    (9, 'Sakurakaze', 1, 3, 0, 2),
    (10, 'Fansa', 0, 14, 0, 2),
    (11, 'Violence Trigger', 0, 6, 0, 2),
    (12, 'RED HEART', 1, 10, 0, 2),
    (13, 'Ojama Mushi', 0, 12, 0, 2),
    (14, 'Aoi Yume', 1, 5, 0, 2),
    (15, 'Aquairo Palette', 1, 11, 0, 2),
    (16, 'Guruguru Love Story', 1, 1, 0, 2),

    (17, 'adrenaline!!!', 0, 1, 1, 2),
    (17, 'adrenaline!!!', 0, 5, 1, 2),
    (17, 'adrenaline!!!', 0, 6, 1, 2),

    (18, 'Yoru ni Kakeru', 0, 10, 1, 2),
    (18, 'Yoru ni Kakeru', 0, 20, 1, 2),

    (19, 'Hare Hare Yukai', 0, 11, 1, 2),
    (19, 'Hare Hare Yukai', 0, 12, 1, 2),
    (19, 'Hare Hare Yukai', 0, 14, 1, 2),

    (20, 'Tomadoi→Recipe', 0, 3, 1, 2),
    (20, 'Tomadoi→Recipe', 0, 19, 1, 2),
    (20, 'Tomadoi→Recipe', 0, 23, 1, 2),

    (21, 'Halloween Night, Tonight!', 1, 6, 1, 2),
    (21, 'Halloween Night, Tonight!', 1, 12, 1, 2),
    (21, 'Halloween Night, Tonight!', 1, 14, 1, 2),
    (21, 'Halloween Night, Tonight!', 1, 20, 1, 2),

    (22, 'Mai Odore! Mai Mai Time', 1, 1, 1, 2),
    (22, 'Mai Odore! Mai Mai Time', 1, 3, 1, 2),

    (23, 'Hacha-Mecha Miracle', 1, 10, 1, 2),
    (23, 'Hacha-Mecha Miracle', 1, 11, 1, 2),
    (23, 'Hacha-Mecha Miracle', 1, 19, 1, 2),

    (24, 'Kiss me! Choose me!', 1, 3, 1, 2),
    (24, 'Kiss me! Choose me!', 1, 5, 1, 2),
    (24, 'Kiss me! Choose me!', 1, 23, 1, 2),

    (25, 'Kirameki Rider', 1, 1, 1, 2),
    (25, 'Kirameki Rider', 1, 3, 1, 2),
    (25, 'Kirameki Rider', 1, 5, 1, 2),
    (25, 'Kirameki Rider', 1, 6, 1, 2),
    (25, 'Kirameki Rider', 1, 10, 1, 2),
    (25, 'Kirameki Rider', 1, 11, 1, 2),
    (25, 'Kirameki Rider', 1, 12, 1, 2),
    (25, 'Kirameki Rider', 1, 14, 1, 2),
    (25, 'Kirameki Rider', 1, 19, 1, 2),
    (25, 'Kirameki Rider', 1, 20, 1, 2),
    (25, 'Kirameki Rider', 1, 23, 1, 2),

    -- 2nd Fes part 2
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Hajimete no Chuu', 0, 28, 0, 3),
    (2, 'Ghost Rule', 0, 24, 0, 3),

    (3, 'Roki', 0, 24, 1, 3),
    (3, 'Roki', 0, 25, 1, 3),
    (3, 'Roki', 0, 26, 1, 3),
    (3, 'Roki', 0, 27, 1, 3),
    (3, 'Roki', 0, 28, 1, 3),

    (4, 'Kirameki Rider', 1, 4, 1, 3),
    (4, 'Kirameki Rider', 1, 2, 1, 3),
    (4, 'Kirameki Rider', 1, 7, 1, 3),
    (4, 'Kirameki Rider', 1, 8, 1, 3),
    (4, 'Kirameki Rider', 1, 9, 1, 3),
    (4, 'Kirameki Rider', 1, 13, 1, 3),
    (4, 'Kirameki Rider', 1, 15, 1, 3),
    (4, 'Kirameki Rider', 1, 16, 1, 3),
    (4, 'Kirameki Rider', 1, 17, 1, 3),
    (4, 'Kirameki Rider', 1, 18, 1, 3),
    (4, 'Kirameki Rider', 1, 21, 1, 3),
    (4, 'Kirameki Rider', 1, 22, 1, 3),

    (5, 'No. 1', 0, 8, 0, 3),
    (6, 'Azamina', 1, 2, 0, 3),
    (7, 'PHANTOM MINDS', 0, 16, 0, 3),
    (8, 'Say! Fanfare!', 1, 7, 0, 3),
    (9, 'Shallys', 1, 9, 0, 3),
    (10, 'Doki! Kouiu no ga Koi na no?', 0, 22, 0, 3),
    (11, 'High-Touch☆Memory', 0, 15, 0, 3),
    (12, 'Scramble', 0, 21, 0, 3),
    (13, 'Ai Kotoba Ⅲ', 0, 13, 0, 3),
    (14, 'Haroharonariyansu Dance', 0, 18, 0, 3),
    (15, 'Umiyuri Kaiteitan', 0, 17, 0, 3),
    (16, 'NEXT COLOR PLANET', 1, 4, 0, 3),

    (17, 'Hana wa Odore ya Irohaniho', 0, 7, 1, 3),
    (17, 'Hana wa Odore ya Irohaniho', 0, 13, 1, 3),
    (17, 'Hana wa Odore ya Irohaniho', 0, 15, 1, 3),

    (18, 'Meteo', 0, 17, 1, 3),
    (18, 'Meteo', 0, 18, 1, 3),

    (19, 'sweets parade', 0, 2, 1, 3),
    (19, 'sweets parade', 0, 9, 1, 3),
    (19, 'sweets parade', 0, 22, 1, 3),

    (20, 'Ai-dee', 0, 2, 1, 3),
    (20, 'Ai-dee', 0, 4, 1, 3),

    (21, 'R', 0, 2, 1, 3),
    (21, 'R', 0, 9, 1, 3),

    (22, 'Shuuchishin', 0, 7, 1, 3),
    (22, 'Shuuchishin', 0, 17, 1, 3),
    (22, 'Shuuchishin', 0, 18, 1, 3),

    (23, 'Lamb.', 0, 4, 1, 3),
    (23, 'Lamb.', 0, 8, 1, 3),
    (23, 'Lamb.', 0, 21, 1, 3),

    (24, 'Saikyou Pare Parade', 0, 13, 1, 3),
    (24, 'Saikyou Pare Parade', 0, 15, 1, 3),
    (24, 'Saikyou Pare Parade', 0, 16, 1, 3),

    (25, 'Happy Synthesizer', 0, 21, 1, 3),
    (25, 'Happy Synthesizer', 0, 22, 1, 3),

    (26, 'Shiny Smily Story', 0, 4, 1, 3),
    (26, 'Shiny Smily Story', 0, 2, 1, 3),
    (26, 'Shiny Smily Story', 0, 7, 1, 3),
    (26, 'Shiny Smily Story', 0, 8, 1, 3),
    (26, 'Shiny Smily Story', 0, 9, 1, 3),
    (26, 'Shiny Smily Story', 0, 13, 1, 3),
    (26, 'Shiny Smily Story', 0, 15, 1, 3),
    (26, 'Shiny Smily Story', 0, 16, 1, 3),
    (26, 'Shiny Smily Story', 0, 17, 1, 3),
    (26, 'Shiny Smily Story', 0, 18, 1, 3),
    (26, 'Shiny Smily Story', 0, 21, 1, 3),
    (26, 'Shiny Smily Story', 0, 22, 1, 3),

    -- 3rd Fes part 1
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Shiny Smily Story', 1, 3, 1, 4),
    (1, 'Shiny Smily Story', 1, 4, 1, 4),
    (1, 'Shiny Smily Story', 1, 5, 1, 4),
    (1, 'Shiny Smily Story', 1, 7, 1, 4),
    (1, 'Shiny Smily Story', 1, 8, 1, 4),
    (1, 'Shiny Smily Story', 1, 10, 1, 4),
    (1, 'Shiny Smily Story', 1, 15, 1, 4),
    (1, 'Shiny Smily Story', 1, 18, 1, 4),
    (1, 'Shiny Smily Story', 1, 22, 1, 4),
    (1, 'Shiny Smily Story', 1, 23, 1, 4),
    (1, 'Shiny Smily Story', 1, 24, 1, 4),
    (1, 'Shiny Smily Story', 1, 27, 1, 4),
    (1, 'Shiny Smily Story', 1, 28, 1, 4),
    (1, 'Shiny Smily Story', 1, 33, 1, 4),
    (1, 'Shiny Smily Story', 1, 35, 1, 4),

    (2, 'Happiness World', 1, 7, 1, 4),
    (2, 'Happiness World', 1, 23, 1, 4),

    (3, 'Tokusya-Seizon Wonder-la-der!!', 1, 24, 0, 4),
    (4, 'HOLOGRAM CIRCUS', 1, 35, 0, 4),
    (5, 'Air Man ga Taosenai', 0, 18, 0, 4),

    (6, 'Candy-Go-Round', 1, 8, 1, 4),
    (6, 'Candy-Go-Round', 1, 15, 1, 4),
    (6, 'Candy-Go-Round', 1, 33, 1, 4),

    (7, 'Say! Fanfare!', 1, 7, 0, 4),
    (8, 'Gamen no Naka no Kimi ga Suki', 1, 5, 0, 4),
    (9, 'NENENENENENENENE! DAIBAKUSOU', 1, 33, 0, 4),

    (10, 'Law-Evading Rock', 0, 10, 1, 4),
    (10, 'Law-Evading Rock', 0, 35, 1, 4),

    (11, 'Zettai Chuusei♡Nanonanora!', 1, 28, 0, 4),
    (12, 'Kagetsu no Yume', 1, 3, 0, 4),
    (13, 'Marine Set Sail!!', 1, 23, 0, 4),

    (14, 'Death Should Not Have Taken Thee!', 0, 22, 1, 4),
    (14, 'Death Should Not Have Taken Thee!', 0, 28, 1, 4),

    (15, 'REFLECT', 1, 39, 0, 4),
    (16, 'Fushigi Purupuru Pururin Rin', 0, 40, 0, 4),
    (17, 'VIOLET', 1, 38, 0, 4),
    (18, 'High Tide', 1, 30, 0, 4),
    
    (19, 'Solar System Disco', 0, 3, 1, 4),
    (19, 'Solar System Disco', 0, 18, 1, 4),

    (20, 'Homenobi', 1, 22, 0, 4),
    (21, 'Infinity', 1, 10, 0, 4),
    (22, 'born to be real', 1, 27, 0, 4),

    (23, 'Mozaik Role (Reloaded)', 0, 5, 1, 4),
    (23, 'Mozaik Role (Reloaded)', 0, 24, 1, 4),

    (24, 'Pleiades!', 1, 15, 0, 4),
    (25, 'HiHi High Tension!', 1, 8, 0, 4),
    (26, 'Stellar Stellar', 1, 4, 0, 4),

    (27, 'GHOST', 1, 4, 1, 4),
    (27, 'GHOST', 1, 27, 1, 4),
    
    (28, 'Prism Melody', 1, 3, 1, 4),
    (28, 'Prism Melody', 1, 4, 1, 4),
    (28, 'Prism Melody', 1, 5, 1, 4),
    (28, 'Prism Melody', 1, 7, 1, 4),
    (28, 'Prism Melody', 1, 8, 1, 4),
    (28, 'Prism Melody', 1, 10, 1, 4),
    (28, 'Prism Melody', 1, 15, 1, 4),
    (28, 'Prism Melody', 1, 18, 1, 4),
    (28, 'Prism Melody', 1, 22, 1, 4),
    (28, 'Prism Melody', 1, 23, 1, 4),
    (28, 'Prism Melody', 1, 24, 1, 4),
    (28, 'Prism Melody', 1, 27, 1, 4),
    (28, 'Prism Melody', 1, 28, 1, 4),
    (28, 'Prism Melody', 1, 33, 1, 4),
    (28, 'Prism Melody', 1, 35, 1, 4),

    -- 3rd Fes part 2
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Kirameki Rider', 1, 1, 1, 5),
    (1, 'Kirameki Rider', 1, 2, 1, 5),
    (1, 'Kirameki Rider', 1, 6, 1, 5),
    (1, 'Kirameki Rider', 1, 9, 1, 5),
    (1, 'Kirameki Rider', 1, 11, 1, 5),
    (1, 'Kirameki Rider', 1, 12, 1, 5),
    (1, 'Kirameki Rider', 1, 13, 1, 5),
    (1, 'Kirameki Rider', 1, 14, 1, 5),
    (1, 'Kirameki Rider', 1, 16, 1, 5),
    (1, 'Kirameki Rider', 1, 17, 1, 5),
    (1, 'Kirameki Rider', 1, 19, 1, 5),
    (1, 'Kirameki Rider', 1, 21, 1, 5),
    (1, 'Kirameki Rider', 1, 26, 1, 5),
    (1, 'Kirameki Rider', 1, 32, 1, 5),
    (1, 'Kirameki Rider', 1, 34, 1, 5),


    (2, 'At God''s Mercy', 0, 9, 1, 5),
    (2, 'At God''s Mercy', 0, 21, 1, 5),
    (2, 'At God''s Mercy', 0, 32, 1, 5),

    (3, 'MAGE OF VIOLET', 1, 12, 0, 5),
    (4, 'Yoi no Yo, Yoi!', 1, 13, 0, 5),

    (5, 'Doubutsu Uranai', 0, 16, 1, 5),
    (5, 'Doubutsu Uranai', 0, 19, 1, 5),
    (5, 'Doubutsu Uranai', 0, 26, 1, 5),
    (5, 'Doubutsu Uranai', 0, 34, 1, 5),

    (6, 'My song', 1, 26, 0, 5),
    (7, 'Asuenokyokaisen', 1, 32, 0, 5),
    (8, 'Chew the Night☆Sky', 1, 6, 0, 5),
    (9, 'Q&A recital!', 0, 19, 0, 5),

    (10, 'Choco♡Melty', 1, 6, 1, 5),
    (10, 'Choco♡Melty', 1, 14, 1, 5),

    (11, 'MOGU MOGU YUMMY!', 1, 17, 0, 5),
    (12, 'ChocoLove', 1, 14, 0, 5),
    (13, 'Shallys', 1, 9, 0, 5),
    (14, 'kotonoha', 1, 2, 0, 5),
    (15, 'Red', 1, 36, 0, 5),
    (16, 'HINOTORI', 1, 37, 0, 5),
    (17, 'Q&A=E', 1, 31, 0, 5),
    (18, 'ALiCE&u', 1, 29, 0, 5),

    (19, 'phony', 0, 11, 1, 5),
    (19, 'phony', 0, 12, 1, 5),
    (19, 'phony', 0, 17, 1, 5),

    (20, 'Chikyuu Saigo no Kokuhaku o', 0, 21, 0, 5),
    (21, 'Howling', 1, 16, 0, 5),
    (22, 'Lioness'' Pride', 1, 34, 0, 5),
    (23, 'KAISOU RESSHA', 1, 11, 0, 5),
    (24, 'Step and Go!!', 1, 1, 0, 5),

    (25, 'BRING IT ON', 0, 1, 1, 5),
    (25, 'BRING IT ON', 0, 2, 1, 5),

    (26, 'Prism Melody', 1, 1, 1, 5),
    (26, 'Prism Melody', 1, 2, 1, 5),
    (26, 'Prism Melody', 1, 6, 1, 5),
    (26, 'Prism Melody', 1, 9, 1, 5),
    (26, 'Prism Melody', 1, 11, 1, 5),
    (26, 'Prism Melody', 1, 12, 1, 5),
    (26, 'Prism Melody', 1, 13, 1, 5),
    (26, 'Prism Melody', 1, 14, 1, 5),
    (26, 'Prism Melody', 1, 16, 1, 5),
    (26, 'Prism Melody', 1, 17, 1, 5),
    (26, 'Prism Melody', 1, 19, 1, 5),
    (26, 'Prism Melody', 1, 21, 1, 5),
    (26, 'Prism Melody', 1, 26, 1, 5),
    (26, 'Prism Melody', 1, 32, 1, 5),
    (26, 'Prism Melody', 1, 34, 1, 5),

    -- 4th Fes part 1
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Kirameki Rider', 1, 1, 1, 6),
    (1, 'Kirameki Rider', 1, 2, 1, 6),
    (1, 'Kirameki Rider', 1, 3, 1, 6),
    (1, 'Kirameki Rider', 1, 5, 1, 6),
    (1, 'Kirameki Rider', 1, 6, 1, 6),
    (1, 'Kirameki Rider', 1, 10, 1, 6),
    (1, 'Kirameki Rider', 1, 14, 1, 6),
    (1, 'Kirameki Rider', 1, 15, 1, 6),
    (1, 'Kirameki Rider', 1, 21, 1, 6),
    (1, 'Kirameki Rider', 1, 22, 1, 6),
    (1, 'Kirameki Rider', 1, 26, 1, 6),
    (1, 'Kirameki Rider', 1, 28, 1, 6),
    (1, 'Kirameki Rider', 1, 35, 1, 6),
    (1, 'Kirameki Rider', 1, 50, 1, 6),
    (1, 'Kirameki Rider', 1, 51, 1, 6),
    (1, 'Kirameki Rider', 1, 52, 1, 6),
    (1, 'Kirameki Rider', 1, 53, 1, 6),
    (1, 'Kirameki Rider', 1, 54, 1, 6),
    (1, 'Kirameki Rider', 1, 29, 1, 6),
    (1, 'Kirameki Rider', 1, 31, 1, 6),
    (1, 'Kirameki Rider', 1, 41, 1, 6),
    (1, 'Kirameki Rider', 1, 37, 1, 6),
    (1, 'Kirameki Rider', 1, 38, 1, 6),
    (1, 'Kirameki Rider', 1, 40, 1, 6),
    (1, 'Kirameki Rider', 1, 48, 1, 6),

    (2, 'BUTA', 1, 10, 0, 6),
    (3, 'WAO!!', 1, 52, 0, 6),
    (4, 'Lyrical Monster', 1, 22, 0, 6),
    (5, 'Caramel Devil', 1, 6, 0, 6),
    (6, 'World is Mine', 0, 28, 0, 6),
    (7, 'Overd', 1, 51, 0, 6),
    (8, 'NoDistance', 1, 14, 0, 6),
    (9, 'DO U', 1, 37, 0, 6),
    (10, 'rirubi', 1, 2, 0, 6),
    (11, 'Dark Breath', 1, 50, 0, 6),
    (12, 'starlight', 1, 15, 0, 6),
    (13, 'PERSONA', 1, 35, 0, 6),
    (14, 'Reason For Existence', 0, 29, 0, 6),
    (15, 'Marionette', 1, 53, 0, 6),
    (16, 'ChikuTaku', 1, 40, 0, 6),
    (17, 'JOLLIE JOLLIE', 1, 41, 0, 6),
    (18, 'IrohaStep!', 1, 54, 0, 6),
    (19, 'Atelier ', 1, 21, 0, 6),
    (20, 'Dreamy Sheep', 1, 26, 0, 6),
    (21, 'Kono Te de Kanaderu Arigatou', 0, 31, 0, 6),
    (22, 'SAIGO NO HANABIRA (The meaning of love)', 0, 38, 0, 6),
    (23, 'afterglow', 1, 5, 0, 6),
    (24, 'My Dearest', 0, 48, 0, 6),
    (25, 'Sakurakaze', 1, 3, 0, 6),
    (26, 'Yumezora Fanfare', 1, 1, 0, 6),

    (27, 'TONDEMO-WONDERZ', 0, 29, 1, 6),
    (27, 'TONDEMO-WONDERZ', 0, 31, 1, 6),

    (28, 'Kawaikute Gomen', 0, 2, 1, 6),
    (28, 'Kawaikute Gomen', 0, 5, 1, 6),
    (28, 'Kawaikute Gomen', 0, 6, 1, 6),

    (29, 'Suki-chan', 0, 37, 1, 6),
    (29, 'Suki-chan', 0, 38, 1, 6),
    (29, 'Suki-chan', 0, 40, 1, 6),
    (29, 'Suki-chan', 0, 48, 1, 6),

    (30, 'Tomadoi→Recipe', 0, 14, 1, 6),
    (30, 'Tomadoi→Recipe', 0, 15, 1, 6),
    (30, 'Tomadoi→Recipe', 0, 28, 1, 6),

    (31, 'Lost One''s Weeping', 0, 10, 1, 6),
    (31, 'Lost One''s Weeping', 0, 41, 1, 6),

    (32, 'ETERNAL BLAZE', 0, 1, 1, 6),
    (32, 'ETERNAL BLAZE', 0, 26, 1, 6),

    (33, 'Jouya Repaint', 1, 50, 1, 6),
    (33, 'Jouya Repaint', 1, 51, 1, 6),
    (33, 'Jouya Repaint', 1, 52, 1, 6),
    (33, 'Jouya Repaint', 1, 53, 1, 6),
    (33, 'Jouya Repaint', 1, 54, 1, 6),

    (34, 'Gunjou Sanka', 0, 3, 1, 6),
    (34, 'Gunjou Sanka', 0, 4, 1, 6),
    (34, 'Gunjou Sanka', 0, 21, 1, 6),
    (34, 'Gunjou Sanka', 0, 22, 1, 6),
    (34, 'Gunjou Sanka', 0, 35, 1, 6),

    (35, 'Our Bright Parade', 1, 1, 1, 6),
    (35, 'Our Bright Parade', 1, 2, 1, 6),
    (35, 'Our Bright Parade', 1, 3, 1, 6),
    (35, 'Our Bright Parade', 1, 5, 1, 6),
    (35, 'Our Bright Parade', 1, 6, 1, 6),
    (35, 'Our Bright Parade', 1, 10, 1, 6),
    (35, 'Our Bright Parade', 1, 14, 1, 6),
    (35, 'Our Bright Parade', 1, 15, 1, 6),
    (35, 'Our Bright Parade', 1, 21, 1, 6),
    (35, 'Our Bright Parade', 1, 22, 1, 6),
    (35, 'Our Bright Parade', 1, 26, 1, 6),
    (35, 'Our Bright Parade', 1, 28, 1, 6),
    (35, 'Our Bright Parade', 1, 35, 1, 6),
    (35, 'Our Bright Parade', 1, 50, 1, 6),
    (35, 'Our Bright Parade', 1, 51, 1, 6),
    (35, 'Our Bright Parade', 1, 52, 1, 6),
    (35, 'Our Bright Parade', 1, 53, 1, 6),
    (35, 'Our Bright Parade', 1, 54, 1, 6),
    (35, 'Our Bright Parade', 1, 29, 1, 6),
    (35, 'Our Bright Parade', 1, 31, 1, 6),
    (35, 'Our Bright Parade', 1, 41, 1, 6),
    (35, 'Our Bright Parade', 1, 37, 1, 6),
    (35, 'Our Bright Parade', 1, 38, 1, 6),
    (35, 'Our Bright Parade', 1, 40, 1, 6),
    (35, 'Our Bright Parade', 1, 48, 1, 6),

    -- 4th Fes part 2
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Mosh Race', 1, 3, 1, 7),
    (1, 'Mosh Race', 1, 19, 1, 7),

    (2, 'The Vampire ', 0, 6, 1, 7),
    (2, 'The Vampire ', 0, 14, 1, 7),

    (3, 'Cinderella ', 0, 28, 0, 7),

    (4, 'Animal', 0, 16, 1, 7),
    (4, 'Animal', 0, 52, 1, 7),

    (5, 'BiBiBi', 1, 13, 0, 7),

    (6, 'Sweet Appetite', 1, 39, 1, 7),
    (6, 'Sweet Appetite', 1, 49, 1, 7),

    (7, 'Dream Shower', 1, 54, 0, 7),

    (8, 'Baby Don''t Stop', 1, 32, 1, 7),
    (8, 'Baby Don''t Stop', 1, 51, 1, 7),

    (9, 'Zombies', 0, 41, 0, 7),
    (10, 'Otome Dissection', 0, 30, 0, 7),
    (11, 'P.E.T.', 1, 53, 0, 7),

    (12, 'Lip-Sync', 1, 12, 1, 7),
    (12, 'Lip-Sync', 1, 50, 1, 7),

    (13, 'End Role', 1, 17, 0, 7),
    (14, 'MKDR (DSCF)', 0, 21, 0, 7),
    (15, 'Leech', 1, 24, 0, 7),
    (16, 'Mozaik Role (Reloaded)', 0, 31, 0, 7),

    (17, 'Ghost Rule', 0, 37, 1, 7),
    (17, 'Ghost Rule', 0, 48, 1, 7),

    (18, 'HIBANA (Reloaded)', 0, 36, 0, 7),
    (19, 'Planetarium', 1, 4, 0, 7),
    (20, 'Love Words IV', 0, 1, 0, 7),

    -- 4th Fes part 3
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Shiny Smily Story', 1, 4, 1, 8),
    (1, 'Shiny Smily Story', 1, 7, 1, 8),
    (1, 'Shiny Smily Story', 1, 8, 1, 8),
    (1, 'Shiny Smily Story', 1, 9, 1, 8),
    (1, 'Shiny Smily Story', 1, 11, 1, 8),
    (1, 'Shiny Smily Story', 1, 12, 1, 8),
    (1, 'Shiny Smily Story', 1, 13, 1, 8),
    (1, 'Shiny Smily Story', 1, 16, 1, 8),
    (1, 'Shiny Smily Story', 1, 17, 1, 8),
    (1, 'Shiny Smily Story', 1, 18, 1, 8),
    (1, 'Shiny Smily Story', 1, 19, 1, 8),
    (1, 'Shiny Smily Story', 1, 23, 1, 8),
    (1, 'Shiny Smily Story', 1, 24, 1, 8),
    (1, 'Shiny Smily Story', 1, 27, 1, 8),
    (1, 'Shiny Smily Story', 1, 32, 1, 8),
    (1, 'Shiny Smily Story', 1, 33, 1, 8),
    (1, 'Shiny Smily Story', 1, 34, 1, 8),
    (1, 'Shiny Smily Story', 1, 30, 1, 8),
    (1, 'Shiny Smily Story', 1, 42, 1, 8),
    (1, 'Shiny Smily Story', 1, 43, 1, 8),
    (1, 'Shiny Smily Story', 1, 36, 1, 8),
    (1, 'Shiny Smily Story', 1, 39, 1, 8),
    (1, 'Shiny Smily Story', 1, 44, 1, 8),
    (1, 'Shiny Smily Story', 1, 46, 1, 8),
    (1, 'Shiny Smily Story', 1, 47, 1, 8),
    (1, 'Shiny Smily Story', 1, 49, 1, 8),

    (2, 'Hi Fine FOX!!', 1, 7, 0, 8),
    (3, 'Kawayo', 1, 13, 0, 8),
    (4, 'Zettai Monarchy Carnival!', 1, 8, 0, 8),
    (5, 'RaRaRa Rabbit', 1, 19, 0, 8),
    (6, 'KAMISAMA・NEKOSAMA', 1, 17, 0, 8),
    (7, 'Gakuen Tengoku', 0, 33, 0, 8),
    (8, 'Hashire Makibao', 0, 18, 0, 8),
    (9, 'Megu Megu☆Fire Endless Night', 0, 39, 0, 8),
    (10, 'Taste of Death', 1, 36, 0, 8),
    (11, 'Illusion Night', 1, 43, 0, 8),
    (12, 'HERE COMES HOPE', 1, 44, 0, 8),
    (13, 'Let Me Stay Here', 1, 46, 0, 8),
    (14, 'Daydream', 1, 47, 0, 8),
    (15, 'Ai no Chiisana Uta', 1, 30, 0, 8),
    (16, 'ROSE of the LAMP', 1, 9, 0, 8),
    (17, 'melody', 0, 34, 0, 8),
    (18, 'Chandelier', 1, 12, 0, 8),
    (19, 'God-ish', 0, 49, 0, 8),
    (20, 'I''m Your Treasure Box', 1, 23, 0, 8),
    (21, 'raimei', 1, 27, 0, 8),
    (22, 'Michizure', 1, 4, 0, 8),
    (23, 'cutlery', 0, 42, 0, 8),
    (24, 'Yakou Tsuushin', 1, 16, 0, 8),
    (25, 'Betsu Sekai', 1, 24, 0, 8),
    (26, 'Fleur', 1, 32, 0, 8),
    (27, 'Stay Blue', 1, 11, 0, 8),

    (28, 'Bad Apple!!', 0, 13, 1, 8),
    (28, 'Bad Apple!!', 0, 23, 1, 8),
    (28, 'Bad Apple!!', 0, 24, 1, 8),

    (29, 'Umarvelous', 0, 16, 1, 8),
    (29, 'Umarvelous', 0, 17, 1, 8),
    (29, 'Umarvelous', 0, 18, 1, 8),

    (30, 'Koi wa Chaos no Shimobe Nari', 0, 12, 1, 8),
    (30, 'Koi wa Chaos no Shimobe Nari', 0, 39, 1, 8),

    (31, 'summertime', 0, 46, 1, 8),
    (31, 'summertime', 0, 47, 1, 8),
    (31, 'summertime', 0, 49, 1, 8),

    (32, 'Houkago Stride', 0, 8, 1, 8),
    (32, 'Houkago Stride', 0, 9, 1, 8),
    (32, 'Houkago Stride', 0, 32, 1, 8),
    (32, 'Houkago Stride', 0, 33, 1, 8),

    (33, 'Worldwide Festival', 0, 7, 1, 8),
    (34, 'Worldwide Festival', 0, 19, 1, 8),
    (34, 'Worldwide Festival', 0, 34, 1, 8),

    (34, 'Monster', 0, 36, 1, 8),
    (34, 'Monster', 0, 44, 1, 8),

    (35, 'Yobanashi Deceive', 0, 30, 1, 8),
    (35, 'Yobanashi Deceive', 0, 42, 1, 8),
    (35, 'Yobanashi Deceive', 0, 43, 1, 8),

    (36, 'Daydream Sky Train', 0, 4, 1, 8),
    (36, 'Daydream Sky Train', 0, 11, 1, 8),
    (36, 'Daydream Sky Train', 0, 27, 1, 8),

    (37, 'Our Bright Parade', 1, 4, 1, 8),
    (37, 'Our Bright Parade', 1, 7, 1, 8),
    (37, 'Our Bright Parade', 1, 8, 1, 8),
    (37, 'Our Bright Parade', 1, 9, 1, 8),
    (37, 'Our Bright Parade', 1, 11, 1, 8),
    (37, 'Our Bright Parade', 1, 12, 1, 8),
    (37, 'Our Bright Parade', 1, 13, 1, 8),
    (37, 'Our Bright Parade', 1, 16, 1, 8),
    (37, 'Our Bright Parade', 1, 17, 1, 8),
    (37, 'Our Bright Parade', 1, 18, 1, 8),
    (37, 'Our Bright Parade', 1, 19, 1, 8),
    (37, 'Our Bright Parade', 1, 23, 1, 8),
    (37, 'Our Bright Parade', 1, 24, 1, 8),
    (37, 'Our Bright Parade', 1, 27, 1, 8),
    (37, 'Our Bright Parade', 1, 32, 1, 8),
    (37, 'Our Bright Parade', 1, 33, 1, 8),
    (37, 'Our Bright Parade', 1, 34, 1, 8),
    (37, 'Our Bright Parade', 1, 30, 1, 8),
    (37, 'Our Bright Parade', 1, 42, 1, 8),
    (37, 'Our Bright Parade', 1, 43, 1, 8),
    (37, 'Our Bright Parade', 1, 36, 1, 8),
    (37, 'Our Bright Parade', 1, 39, 1, 8),
    (37, 'Our Bright Parade', 1, 44, 1, 8),
    (37, 'Our Bright Parade', 1, 46, 1, 8),
    (37, 'Our Bright Parade', 1, 47, 1, 8),
    (37, 'Our Bright Parade', 1, 49, 1, 8),

    -- 5th Fes part 1
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Our Bright Parade', 1, 8, 1, 9),
    (1, 'Our Bright Parade', 1, 9, 1, 9),
    (1, 'Our Bright Parade', 1, 14, 1, 9),
    (1, 'Our Bright Parade', 1, 18, 1, 9),
    (1, 'Our Bright Parade', 1, 22, 1, 9),
    (1, 'Our Bright Parade', 1, 23, 1, 9),
    (1, 'Our Bright Parade', 1, 24, 1, 9),
    (1, 'Our Bright Parade', 1, 34, 1, 9),
    (1, 'Our Bright Parade', 1, 52, 1, 9),
    (1, 'Our Bright Parade', 1, 53, 1, 9),
    (1, 'Our Bright Parade', 1, 29, 1, 9),
    (1, 'Our Bright Parade', 1, 31, 1, 9),
    (1, 'Our Bright Parade', 1, 43, 1, 9),
    (1, 'Our Bright Parade', 1, 37, 1, 9),
    (1, 'Our Bright Parade', 1, 38, 1, 9),
    (1, 'Our Bright Parade', 1, 39, 1, 9),
    (1, 'Our Bright Parade', 1, 49, 1, 9),

    (2, 'Beautiful Girl Innocent♡Pirates', 1, 23, 0, 9),
    (3, 'Virtualove', 1, 8, 0, 9),
    (4, 'Gyudon Carnival!', 1, 22, 0, 9),

    (5, 'Marine and Kanata 5th Fes Mashup', 1, 23, 1, 9),
    (5, 'Marine and Kanata 5th Fes Mashup', 1, 24, 1, 9),

    (6, 'Euphoria', 1, 14, 0, 9),
    (7, 'Sing Out', 1, 29, 0, 9),
    (8, 'Starduster', 0, 31, 0, 9),

    (9, 'Niccori^^ Survey Team Theme', 0, 22, 1, 9),
    (9, 'Niccori^^ Survey Team Theme', 0, 39, 1, 9),
    (9, 'Niccori^^ Survey Team Theme', 0, 52, 1, 9),

    (10, 'WAVE', 0, 39, 0, 9),
    (11, 'CHIMERA', 1, 37, 0, 9),
    (12, 'Be The One', 0, 34, 0, 9),

    (13, 'Crazy Beat', 0, 9, 1, 9),
    (13, 'Crazy Beat', 0, 14, 1, 9),

    (14, 'Shiny Smily Story', 1, 8, 1, 9),
    (14, 'Shiny Smily Story', 1, 9, 1, 9),
    (14, 'Shiny Smily Story', 1, 14, 1, 9),
    (14, 'Shiny Smily Story', 1, 18, 1, 9),
    (14, 'Shiny Smily Story', 1, 22, 1, 9),
    (14, 'Shiny Smily Story', 1, 23, 1, 9),
    (14, 'Shiny Smily Story', 1, 24, 1, 9),
    (14, 'Shiny Smily Story', 1, 34, 1, 9),
    (14, 'Shiny Smily Story', 1, 52, 1, 9),
    (14, 'Shiny Smily Story', 1, 53, 1, 9),
    (14, 'Shiny Smily Story', 1, 29, 1, 9),
    (14, 'Shiny Smily Story', 1, 31, 1, 9),
    (14, 'Shiny Smily Story', 1, 43, 1, 9),
    (14, 'Shiny Smily Story', 1, 37, 1, 9),
    (14, 'Shiny Smily Story', 1, 38, 1, 9),
    (14, 'Shiny Smily Story', 1, 39, 1, 9),
    (14, 'Shiny Smily Story', 1, 49, 1, 9),

    (15, 'Shallys', 1, 9, 0, 9),
    (16, 'Crimson Oath', 0, 18, 0, 9),
    (17, 'Sip Some Tea', 1, 43, 0, 9),

    (18, 'Jackpot Sad Girl', 0, 29, 1, 9),
    (18, 'Jackpot Sad Girl', 0, 38, 1, 9),
    (18, 'Jackpot Sad Girl', 0, 43, 1, 9),
    (18, 'Jackpot Sad Girl', 0, 49, 1, 9),

    (19, 'Gales of Song', 0, 49, 0, 9),
    (20, 'Chloe 5th Fes Medly', 1, 53, 0, 9),

    (21, 'SUNNY DAY SONG', 0, 18, 1, 9),
    (21, 'SUNNY DAY SONG', 0, 34, 1, 9),

    (22, 'Tear-Gazer ', 1, 52, 0, 9),
    (23, 'Meconopsis', 1, 38, 0, 9),
    (24, 'Knock it out!', 1, 24, 0, 9),

    (25, 'Telecaster B-Boy', 0, 8, 1, 9),
    (25, 'Telecaster B-Boy', 0, 31, 1, 9),

    (26, 'WILDCARD', 0, 37, 1, 9),
    (26, 'WILDCARD', 0, 53, 1, 9),

    (27, 'Capture the Moment', 1, 8, 1, 9),
    (27, 'Capture the Moment', 1, 9, 1, 9),
    (27, 'Capture the Moment', 1, 14, 1, 9),
    (27, 'Capture the Moment', 1, 18, 1, 9),
    (27, 'Capture the Moment', 1, 22, 1, 9),
    (27, 'Capture the Moment', 1, 23, 1, 9),
    (27, 'Capture the Moment', 1, 24, 1, 9),
    (27, 'Capture the Moment', 1, 34, 1, 9),
    (27, 'Capture the Moment', 1, 52, 1, 9),
    (27, 'Capture the Moment', 1, 53, 1, 9),
    (27, 'Capture the Moment', 1, 29, 1, 9),
    (27, 'Capture the Moment', 1, 31, 1, 9),
    (27, 'Capture the Moment', 1, 43, 1, 9),
    (27, 'Capture the Moment', 1, 37, 1, 9),
    (27, 'Capture the Moment', 1, 38, 1, 9),
    (27, 'Capture the Moment', 1, 39, 1, 9),
    (27, 'Capture the Moment', 1, 49, 1, 9),

    -- 5th Fes part 2
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Prism Melody', 1, 1, 1, 10),
    (1, 'Prism Melody', 1, 15, 1, 10),
    (1, 'Prism Melody', 1, 16, 1, 10),
    (1, 'Prism Melody', 1, 19, 1, 10),
    (1, 'Prism Melody', 1, 21, 1, 10),
    (1, 'Prism Melody', 1, 26, 1, 10),
    (1, 'Prism Melody', 1, 28, 1, 10),
    (1, 'Prism Melody', 1, 33, 1, 10),
    (1, 'Prism Melody', 1, 35, 1, 10),
    (1, 'Prism Melody', 1, 51, 1, 10),
    (1, 'Prism Melody', 1, 54, 1, 10),
    (1, 'Prism Melody', 1, 55, 1, 10),
    (1, 'Prism Melody', 1, 56, 1, 10),
    (1, 'Prism Melody', 1, 57, 1, 10),
    (1, 'Prism Melody', 1, 36, 1, 10),
    (1, 'Prism Melody', 1, 44, 1, 10),
    (1, 'Prism Melody', 1, 47, 1, 10),

    (2, 'Yukkuri Hashireba Kaze wa Fuku', 1, 1, 0, 10),
    (3, 'Happy End Princess', 0, 57, 0, 10),
    (4, 'Nenechi''s Giragira Fan Meeting', 1, 33, 0, 10),

    (5, 'Mirai-gata AIDORU ', 0, 19, 1, 10),
    (5, 'Mirai-gata AIDORU ', 0, 33, 1, 10),

    (6, 'Envy Baby', 0, 35, 0, 10),
    (7, 'Fansa', 0, 47, 0, 10),
    (8, 'SKYSONAR', 1, 21, 0, 10),

    (9, 'Yuusha', 0, 44, 1, 10),
    (9, 'Yuusha', 0,47 , 1, 10),

    (10, 'Subaru 5th Fes Medley', 1, 15, 0, 10),
    (11, 'Fools Fools Fools ', 1, 51, 0, 10),
    (12, 'God-ish', 0, 28, 0, 10),

    (13, 'save our hearts', 1, 55, 1, 10),
    (13, 'save our hearts', 1, 56, 1, 10),
    (13, 'save our hearts', 1, 57, 1, 10),

    (14, 'Shiny Smily Story', 1, 1, 1, 10),
    (14, 'Shiny Smily Story', 1, 15, 1, 10),
    (14, 'Shiny Smily Story', 1, 16, 1, 10),
    (14, 'Shiny Smily Story', 1, 19, 1, 10),
    (14, 'Shiny Smily Story', 1, 21, 1, 10),
    (14, 'Shiny Smily Story', 1, 26, 1, 10),
    (14, 'Shiny Smily Story', 1, 28, 1, 10),
    (14, 'Shiny Smily Story', 1, 33, 1, 10),
    (14, 'Shiny Smily Story', 1, 35, 1, 10),
    (14, 'Shiny Smily Story', 1, 51, 1, 10),
    (14, 'Shiny Smily Story', 1, 54, 1, 10),
    (14, 'Shiny Smily Story', 1, 55, 1, 10),
    (14, 'Shiny Smily Story', 1, 56, 1, 10),
    (14, 'Shiny Smily Story', 1, 57, 1, 10),
    (14, 'Shiny Smily Story', 1, 36, 1, 10),
    (14, 'Shiny Smily Story', 1, 44, 1, 10),
    (14, 'Shiny Smily Story', 1, 47, 1, 10),

    (15, 'Kazewo Aogishi Reiyona', 1, 54, 0, 10),
    (16, 'Baby you', 0, 55, 0, 10),
    (17, 'Kataomoi', 0, 19, 0, 10),

    (18, 'Oni KYOKAN', 0, 28, 1, 10),
    (18, 'Oni KYOKAN', 0, 51, 1, 10),

    (19, 'Sing my Pleasure', 0, 44, 0, 10),
    (20, 'IDOL', 0, 10, 0, 10),
    (21, 'Hikaru nara', 0, 56, 0, 10),

    (22, 'Q', 1, 26, 1, 10),
    (22, 'Q', 1, 36, 1, 10),

    (23, 'Overkill', 1, 36, 0, 10),
    (24, 'Night Loop', 1, 16, 0, 10),
    (25, 'Fins', 1, 26, 0, 10),

    (26, 'Pre-Parade', 0, 15, 1, 10),
    (26, 'Pre-Parade', 0, 16, 1, 10),
    (26, 'Pre-Parade', 0, 35, 1, 10),

    (27, 'SEKAI', 0, 1, 1, 10),
    (27, 'SEKAI', 0, 21, 1, 10),
    (27, 'SEKAI', 0, 54, 1, 10),

    (28, 'Capture the Moment', 1, 1, 1, 10),
    (28, 'Capture the Moment', 1, 15, 1, 10),
    (28, 'Capture the Moment', 1, 16, 1, 10),
    (28, 'Capture the Moment', 1, 19, 1, 10),
    (28, 'Capture the Moment', 1, 21, 1, 10),
    (28, 'Capture the Moment', 1, 26, 1, 10),
    (28, 'Capture the Moment', 1, 28, 1, 10),
    (28, 'Capture the Moment', 1, 33, 1, 10),
    (28, 'Capture the Moment', 1, 35, 1, 10),
    (28, 'Capture the Moment', 1, 51, 1, 10),
    (28, 'Capture the Moment', 1, 54, 1, 10),
    (28, 'Capture the Moment', 1, 55, 1, 10),
    (28, 'Capture the Moment', 1, 56, 1, 10),
    (28, 'Capture the Moment', 1, 57, 1, 10),
    (28, 'Capture the Moment', 1, 36, 1, 10),
    (28, 'Capture the Moment', 1, 44, 1, 10),
    (28, 'Capture the Moment', 1, 47, 1, 10),

    -- 5th Fes part 3
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Fansa ', 0, 7, 1, 11),
    (1, 'Fansa ', 0, 8, 1, 11),
    (1, 'Fansa ', 0, 21, 1, 11),
    (1, 'Fansa ', 0, 22, 1, 11),

    (2, 'Kawaiko Check!', 1, 18, 0, 11),

    (3, 'Sis × Love', 0, 41, 1, 11),
    (3, 'Sis × Love', 0, 42, 1, 11),

    (4, 'Idol 10 Rules', 1, 17, 1, 11),
    (4, 'Idol 10 Rules', 1, 28, 1, 11),

    (5, 'Doutan Kyohi ', 1, 33, 0, 11),

    (6, 'Kawaikute Gomen', 0, 2, 1, 11),
    (6, 'Kawaikute Gomen', 0, 9, 1, 11),
    (6, 'Kawaikute Gomen', 0, 14, 1, 11),
    (6, 'Kawaikute Gomen', 0, 17, 1, 11),
    (6, 'Kawaikute Gomen', 0, 23, 1, 11),
    (6, 'Kawaikute Gomen', 0, 33, 1, 11),
    (6, 'Kawaikute Gomen', 0, 50, 1, 11),
    (6, 'Kawaikute Gomen', 0, 52, 1, 11),
    (6, 'Kawaikute Gomen', 0, 43, 1, 11),
    (6, 'Kawaikute Gomen', 0, 46, 1, 11),

    (7, 'Utage☆Dokudanzyou', 1, 13, 0, 11),
    (8, 'Kessen Spirit', 0, 30, 0, 11),
    (9, 'Tokyo Wabi-Sabi Lullaby', 1, 39, 0, 11),

    (10, 'Tokyo-Summer-Session', 0, 15, 1, 11),
    (10, 'Tokyo-Summer-Session', 0, 24, 1, 11),

    (11, 'PAKU-PAKU-SEIBAI', 1, 49, 0, 11),

    (12, 'Hero for a day', 1, 37, 1, 11),
    (12, 'Hero for a day', 1, 57, 1, 11),

    (13, 'motto ichigo ore', 1, 3, 0, 11),
    (14, 'Riazyuu★Bokumetu movement', 1, 12, 0, 11),

    (15, 'Daikirai na Hazu Datta', 0, 34, 1, 11),
    (15, 'Daikirai na Hazu Datta', 0, 35, 1, 11),

    (16, 'Senpai', 0, 5, 1, 11),
    (16, 'Senpai', 0, 16, 1, 11),
    (16, 'Senpai', 0, 32, 1, 11),

    (17, 'Bridal Dream', 1, 19, 1, 11),
    (17, 'Bridal Dream', 1, 23, 1, 11),

    (18, 'Outsider plan ', 1, 50, 1, 11),
    (18, 'Outsider plan ', 1, 51, 1, 11),
    (18, 'Outsider plan ', 1, 52, 1, 11),
    (18, 'Outsider plan ', 1, 53, 1, 11),
    (18, 'Outsider plan ', 1, 54, 1, 11),

    (19, 'Inokori Sensei ', 0,26 , 1, 11),
    (19, 'Inokori Sensei ', 0, 27, 1, 11),

    (20, 'Seishun Archive', 1, 1, 1, 11),
    (20, 'Seishun Archive', 1, 4, 1, 11),
    (20, 'Seishun Archive', 1, 7, 1, 11),
    (20, 'Seishun Archive', 1, 11, 1, 11),
    (20, 'Seishun Archive', 1, 24, 1, 11),
    (20, 'Seishun Archive', 1, 30, 1, 11),
    (20, 'Seishun Archive', 1, 31, 1, 11),
    (20, 'Seishun Archive', 1, 37, 1, 11),
    (20, 'Seishun Archive', 1, 39, 1, 11),

    (21, 'Hokori Takaki Idol', 0, 1, 0, 11),
    (22, 'Kyoushitsu ni Ao', 1, 4, 0, 11),

    -- 5th Fes part 4
    -- Act, Song, Ori, Talent, Group, Concert

    (1, 'Kirameki Rider☆', 1, 2, 1, 12),
    (1, 'Kirameki Rider☆', 1, 3, 1, 12),
    (1, 'Kirameki Rider☆', 1, 4, 1, 12),
    (1, 'Kirameki Rider☆', 1, 5, 1, 12),
    (1, 'Kirameki Rider☆', 1, 7, 1, 12),
    (1, 'Kirameki Rider☆', 1, 11, 1, 12),
    (1, 'Kirameki Rider☆', 1, 12, 1, 12),
    (1, 'Kirameki Rider☆', 1, 13, 1, 12),
    (1, 'Kirameki Rider☆', 1, 17, 1, 12),
    (1, 'Kirameki Rider☆', 1, 27, 1, 12),
    (1, 'Kirameki Rider☆', 1, 32, 1, 12),
    (1, 'Kirameki Rider☆', 1, 50, 1, 12),
    (1, 'Kirameki Rider☆', 1, 30, 1, 12),
    (1, 'Kirameki Rider☆', 1, 41, 1, 12),
    (1, 'Kirameki Rider☆', 1, 42, 1, 12),
    (1, 'Kirameki Rider☆', 1, 40, 1, 12),
    (1, 'Kirameki Rider☆', 1, 46, 1, 12),
    (1, 'Kirameki Rider☆', 1, 48, 1, 12),

    (2, 'Lamy＊Love♡Fest☆', 1, 32, 0, 12),
    (3, 'Omega Cat', 1, 5, 0, 12),
    (4, 'Song of the Dead', 0, 41, 0, 12),

    (5, 'Mugen Daisuki', 0, 7, 1, 12),
    (5, 'Mugen Daisuki', 0, 16, 1, 12),

    (6, 'Sugar Song to Bitter Step', 0, 40, 0, 12),
    (7, 'mumei', 1, 48, 0, 12),
    (8, 'Aien-Jihen', 1, 50, 0, 12),

    (9, 'Hatsukoi Cider', 0, 13, 1, 12),
    (9, 'Hatsukoi Cider', 0, 32, 1, 12),
    (9, 'Hatsukoi Cider', 0, 42, 1, 12),

    (10, 'Nisemono Ningen 40-gou', 0, 42, 0, 12),
    (11, 'Who’s Toxic? It’s You!', 1, 30, 0, 12),
    (12, 'S.T.Y.', 1, 27, 0, 12),

    (13, 'Sorairo Days', 0, 12, 1, 12),
    (13, 'Sorairo Days', 0, 40, 1, 12),
    (13, 'Sorairo Days', 0, 48, 1, 12),

    (14, 'Shiny Smily Story', 1, 2, 1, 12),
    (14, 'Shiny Smily Story', 1, 3, 1, 12),
    (14, 'Shiny Smily Story', 1, 4, 1, 12),
    (14, 'Shiny Smily Story', 1, 5, 1, 12),
    (14, 'Shiny Smily Story', 1, 7, 1, 12),
    (14, 'Shiny Smily Story', 1, 11, 1, 12),
    (14, 'Shiny Smily Story', 1, 12, 1, 12),
    (14, 'Shiny Smily Story', 1, 13, 1, 12),
    (14, 'Shiny Smily Story', 1, 17, 1, 12),
    (14, 'Shiny Smily Story', 1, 27, 1, 12),
    (14, 'Shiny Smily Story', 1, 32, 1, 12),
    (14, 'Shiny Smily Story', 1, 50, 1, 12),
    (14, 'Shiny Smily Story', 1, 30, 1, 12),
    (14, 'Shiny Smily Story', 1, 41, 1, 12),
    (14, 'Shiny Smily Story', 1, 42, 1, 12),
    (14, 'Shiny Smily Story', 1, 40, 1, 12),
    (14, 'Shiny Smily Story', 1, 46, 1, 12),
    (14, 'Shiny Smily Story', 1, 48, 1, 12),

    (15, 'Cinderella Magic', 1, 12, 0, 12),
    (16, 'Neko Kaburi-Na', 1, 17, 0, 12),
    (17, 'Let me be your SAIOSHI!', 1, 11, 0, 12),

    (18, 'Bon Appétit♡S', 0, 2, 1, 12),
    (18, 'Bon Appétit♡S', 0, 11, 1, 12),
    (18, 'Bon Appétit♡S', 0, 46, 1, 12),

    (19, 'Boku ga Shinou to Omotta no wa', 0, 2, 0, 12),
    (20, 'ODDTAXI', 0, 46, 0, 12),
    (21, 'melting', 1, 13, 0, 12),

    (22, 'Gimme×Gimme', 0, 17, 1, 12),
    (22, 'Gimme×Gimme', 0, 30, 1, 12),

    (23, 'LETTER', 1, 7, 0, 12),
    (24, 'Our Tree', 1, 3, 0, 12),
    (25, 'Suisei 5th Fes Medley', 1, 4, 0, 12),

    (26, 'RAD DOGS', 0, 27, 1, 12),
    (26, 'RAD DOGS', 0, 41, 1, 12),
    (26, 'RAD DOGS', 0, 50, 1, 12),

    (27, 'The Last Frontier', 1, 4, 1, 12),
    (27, 'The Last Frontier', 1, 5, 1, 12),

    (28, 'Capture the Moment', 1, 2, 1, 12),
    (28, 'Capture the Moment', 1, 3, 1, 12),
    (28, 'Capture the Moment', 1, 4, 1, 12),
    (28, 'Capture the Moment', 1, 5, 1, 12),
    (28, 'Capture the Moment', 1, 7, 1, 12),
    (28, 'Capture the Moment', 1, 11, 1, 12),
    (28, 'Capture the Moment', 1, 12, 1, 12),
    (28, 'Capture the Moment', 1, 13, 1, 12),
    (28, 'Capture the Moment', 1, 17, 1, 12),
    (28, 'Capture the Moment', 1, 27, 1, 12),
    (28, 'Capture the Moment', 1, 32, 1, 12),
    (28, 'Capture the Moment', 1, 50, 1, 12),
    (28, 'Capture the Moment', 1, 30, 1, 12),
    (28, 'Capture the Moment', 1, 41, 1, 12),
    (28, 'Capture the Moment', 1, 42, 1, 12),
    (28, 'Capture the Moment', 1, 40, 1, 12),
    (28, 'Capture the Moment', 1, 46, 1, 12),
    (28, 'Capture the Moment', 1, 48, 1, 12)

end