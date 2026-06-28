WITH RankedPatients AS (

SELECT

Age,

Glucose,

BMI,

Outcome,

ROW_NUMBER() OVER(
ORDER BY Glucose DESC
) AS RankNum

FROM diabetes

)

SELECT *

FROM RankedPatients

WHERE RankNum <= 10;