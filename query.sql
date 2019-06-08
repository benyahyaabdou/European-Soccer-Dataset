SELECT p.player_name, DATE - p.birthday as age, p.height,p.weight, pa.overall_rating, pa.penalties, count(pa.date) nb_match, pa.aggression, pa.preferred_foot
FROM Player p
JOIN Player_Attributes pa
ON p.player_api_id = pa.player_api_id
GROUP BY 1
ORDER BY 5 DESC
