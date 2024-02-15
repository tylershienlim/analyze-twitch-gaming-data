/*
Query to select top 10 rows from chat and stream tables
*/
SELECT TOP(10) * FROM [Projects].[dbo].[chat];

SELECT TOP(10) * FROM [Projects].[dbo].[stream];

-- Query to find distinct games from stream table
SELECT DISTINCT game FROM [Projects].[dbo].[stream];

-- Query to find distinct channels from stream table
SELECT DISTINCT channel FROM [Projects].[dbo].[stream];

-- Query to determine most popular games in stream table based on number of views
SELECT DISTINCT game, COUNT(device_id) AS num_views
FROM [Projects].[dbo].[stream]
GROUP BY game
ORDER BY num_views DESC;

-- Query to find all the countries of LoL stream viewers
SELECT country, COUNT(*) AS num_people
FROM [Projects].[dbo].[stream]
WHERE game = 'League of Legends'
GROUP BY country
ORDER BY num_people DESC;

-- Query to find streaming mode (site, iphone or android etc) and number of people using mode of streaming
SELECT player, COUNT(*) AS num_people
FROM [Projects].[dbo].[stream]
GROUP BY player
ORDER BY num_people DESC;

-- Query to create new column 'genre' for stream table
SELECT game,
    CASE
        WHEN game = 'Dota 2'
            THEN 'MOBA'
        WHEN game = 'League of Legends' 
            THEN 'MOBA'
        WHEN game = 'Heroes of the Storm'
            THEN 'MOBA'
            WHEN game = 'Counter-Strike: Global Offensive'
            THEN 'FPS'
            WHEN game = 'DayZ'
            THEN 'Survival'
            WHEN game = 'ARK: Survival Evolved'
            THEN 'Survival'
        ELSE 'Other'
        END AS 'genre',
    COUNT(*) AS num_games
FROM [Projects].[dbo].[stream]
GROUP BY game
ORDER BY num_games DESC;

-- Query to get view count per hour
SELECT DISTINCT DATEPART(HOUR, time) AS 'time',
    COUNT(*) AS view_count
From [Projects].[dbo].[stream]
GROUP BY DATEPART(HOUR, time)
ORDER BY DATEPART(HOUR, time);

-- Query to get view count per hour IN US
SELECT DISTINCT DATEPART(HOUR, time) AS 'time',
    COUNT(*) AS view_count
From [Projects].[dbo].[stream]
WHERE country = 'US'
GROUP BY DATEPART(HOUR, time)
ORDER BY DATEPART(HOUR, time);