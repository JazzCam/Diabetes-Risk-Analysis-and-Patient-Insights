
-- What factores are most associated with diabetes? 
-- Outcome 1= Diabetes 0= No diabetes 

SELECT COUNT(*)
FROM diabetes; 

SELECT Outcome,
       COUNT(*) AS Patients
FROM diabetes
GROUP BY Outcome;

-- Total patients
SELECT COUNT(*) AS TotalPatients
FROM diabetes;

-- Diabetes vs Non-diabetes
SELECT Outcome,
       COUNT(*) AS Patients
FROM diabetes
GROUP BY Outcome;

-- Patients over 50
SELECT COUNT(*) AS PatientsOver50
FROM diabetes
WHERE Age > 50;


-- Avg Glucose levels 
WITH GlucoseStats AS (

    SELECT
        Outcome,
        AVG(Glucose) AS Avg_Glucose

    FROM diabetes

    GROUP BY Outcome

)

SELECT *
FROM GlucoseStats;
