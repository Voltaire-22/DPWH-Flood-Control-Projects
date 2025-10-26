SELECT *
FROM floodcontrol;

-- Legacy Construction Corporation (Formerly: Legacy Construction) PROJECTS
-- total of 133 projects
SELECT Contractor1, COUNT(ProjectId) AS project
FROM floodcontrol
WHERE Contractor1 LIKE 'Legacy%'
GROUP BY Contractor1
ORDER BY project DESC;

SELECT 
	Contractor1, 
    TypeOfWork,
    COUNT(TypeOfWork) AS projecttype
FROM floodcontrol
WHERE Contractor1 = 'Legacy Construction Corporation (Formerly: Legacy Construction)'
GROUP BY TypeOfWork
ORDER BY projecttype DESC;

SELECT 
	Contractor1,
    MAX(ContractCost),
	TypeOfWork
FROM floodcontrol
WHERE Contractor1 = 'Legacy Construction Corporation (Formerly: Legacy Construction)'
GROUP BY Contractor1
ORDER BY 2 DESC;

SELECT Contractor1, COUNT(ProjectId) AS project
FROM floodcontrol
GROUP BY Contractor1
ORDER BY project DESC;

-- SUM OF PROJECT BY MAINISLAND
SELECT 
	MainIsland, 
	SUM(ContractCost),
    SUM(ApprovedBudgetFor)
FROM floodcontrol
GROUP BY MainIsland;

-- COUNT OF PROJECT BY TYPE OF WORK
SELECT TypeOfWork, COUNT(ProjectId)
FROM floodcontrol
GROUP BY TypeOfWork 
ORDER BY 2 DESC;

-- SUM OF CONTRACT COST BY PROVINCE
-- however data wasn't to relevant/reliable as there's a lot of missing values in province column=
SELECT Province, ROUND(SUM(ContractCost),2)
FROM floodcontrol
GROUP BY Province
ORDER BY 2 DESC;

SELECT *
FROM floodcontrol;




















