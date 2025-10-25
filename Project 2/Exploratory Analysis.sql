
-- Legacy Construction Corporation (Formerly: Legacy Construction) PROJECTS
-- total of 133 projects
SELECT Contractor1, COUNT(ProjectId) AS project
FROM floodcontrol
WHERE Contractor1 LIKE 'Legacy%'
GROUP BY Contractor1
ORDER BY project DESC;

SELECT Contractor1, COUNT(ProjectId) AS project
FROM floodcontrol
GROUP BY Contractor1
ORDER BY project DESC;

-- COUNT OF PROJECT BY MAINISLAND
SELECT MainIsland, COUNT(ProjectId)
FROM floodcontrol
GROUP BY MainIsland;
