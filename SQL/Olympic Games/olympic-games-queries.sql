--- How many olympics games have been held?

SELECT COUNT(DISTINCT Games) as total_olympic_games
FROM athlete_events;

--- How many athletes have participated in each olympic game?

SELECT Games, Year, COUNT(*) as total_athletes
FROM athlete_events
GROUP BY Games, Year;

SELECT *
FROM athlete_events
WHERE Games = '1896 Summer';

--- List down all the olympic games held so far

SELECT DISTINCT Games, Year, Season, City
FROM athlete_events
ORDER BY Year;

--- Mention the total number of nations who participated in each olympics game

SELECT Games, COUNT(DISTINCT NOC) AS number_of_nations
FROM athlete_events
GROUP BY Games
ORDER BY Games;

SELECT DISTINCT NOC
FROM athlete_events
WHERE Games = '1896 Summer';

--- Which year saw the highest and lowest number of countries participating in olympics?

SELECT Games, COUNT(DISTINCT NOC) AS number_of_nations, MIN(number_of_nations) AS lowest, MAX(number_of_nations) AS highest
FROM athlete_events
GROUP BY Games;