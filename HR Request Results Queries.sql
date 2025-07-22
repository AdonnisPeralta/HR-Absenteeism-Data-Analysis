USE work;

-- Table outputs
SELECT COUNT(*) FROM reasons;
SELECT * FROM compensation;
SELECT * FROM absenteeism_at_work;

-- Reasons for absence and their percentage totals
WITH reason_count_table AS (
SELECT r.Number, r.Reason AS reason, COUNT(a.ID) AS reason_count

FROM	reasons r
LEFT JOIN 	absenteeism_at_work a 
	ON		r.Number = a.`Reason for absence`
GROUP BY	r.Number, r.Reason
ORDER BY	reason_count DESC
)

SELECT	r.reason, r.reason_count, CONCAT(ROUND((reason_count/(SELECT COUNT(a.ID) FROM absenteeism_at_work a)) * 100, 2), '%') AS percentage_of_total
FROM reason_count_table r
LEFT JOIN absenteeism_at_work a
ON r.Number = a.`Reason for absence`
GROUP BY r.reason, r.reason_count
ORDER BY reason_count DESC;

-- Join the tables
SELECT	* 
FROM	absenteeism_at_work a
	LEFT JOIN compensation c
		ON a.ID = c.ID
	LEFT JOIN reasons r
		ON a.`Reason for absence` = r.Number;
        
-- Find the healthiest BMI < 25, non-smoker, non-drinker, absences < avg(absences)
SELECT	*
FROM	absenteeism_at_work a
WHERE	`Social smoker` = 0 AND `Social drinker` = 0 AND `Body mass index` < 25 AND `Absenteeism time in hours` < (SELECT AVG(`Absenteeism time in hours`) FROM absenteeism_at_work);

-- Count of the healthiest employees with: BMI < 25, non-smoker, non-drinker, absences < avg(absences)
SELECT	COUNT(*)
FROM	absenteeism_at_work a
WHERE	`Social smoker` = 0 AND `Social drinker` = 0 AND `Body mass index` < 25 AND `Absenteeism time in hours` < (SELECT AVG(`Absenteeism time in hours`) FROM absenteeism_at_work);


-- Compensation rate increase for non-smokers/ budget $983,221
SELECT	COUNT(*) AS nonsmoker
FROM	absenteeism_at_work
WHERE	`Social smoker` = 0; -- 686 non smokers; 8 hours a day * 5 days a week * 52 weeks a year * 686 workers = 983,221/1,426,880 = $0.68

-- Get list of non-smoker IDs
SELECT	c.ID, c.`comp/hr`,c.`comp/hr` AS current_comp_rate, c.`comp/hr` + 0.68 AS new_comp_rate
FROM	compensation c
	LEFT JOIN (SELECT	a.ID
				FROM	absenteeism_at_work a
				WHERE	`Social smoker` = 0) AS a
			ON c.ID = a.ID;

-- Optimize the main query
SELECT	
	a.ID,
    r.Reason,
    a.`Month of absence`,
    `Body mass index`,
    CASE
		WHEN `Body mass index` < 18.5 THEN "Underweight"
        WHEN `Body mass index` BETWEEN 18.5 AND 25 THEN "Healthy"
        WHEN `Body mass index` BETWEEN 25 AND 30 THEN "Overweight"
        WHEN `Body mass index` > 30 THEN "Obese"
        ELSE "Unknown"
    END AS BMI_Catergory,
    CASE
		WHEN `Month of absence` IN (12,1,2) THEN "Winter"
        WHEN `Month of absence` IN (3,4,5) THEN "Spring"
        WHEN `Month of absence` IN (6,7,8) THEN "Summer"
        WHEN `Month of absence` IN (9,10,11) THEN "Fall"
        ELSE "Unknown"
    END AS Season_names,
    `Reason for absence`, 
    `Month of absence`, 
    `Day of the week`, 
    `Seasons`, 
    `Transportation expense`, 
    `Distance from Residence to Work`, 
    `Service time`, 
    `Age`, 
    `Work load Average/day`, 
    `Hit target`, 
    `Disciplinary failure`, 
    `Education`, 
    `Son`, 
    `Social drinker`, 
    `Social smoker`, 
    `Pet`, 
    `Weight`, 
    `Height`, 
    `Body mass index`, 
    `Absenteeism time in hours`
FROM	absenteeism_at_work a
	LEFT JOIN compensation c
		ON a.ID = c.ID
	LEFT JOIN reasons r
		ON a.`Reason for absence` = r.Number;
