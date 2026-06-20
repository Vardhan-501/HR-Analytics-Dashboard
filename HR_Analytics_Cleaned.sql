#TOTOAL EMPLOYEES
SELECT COUNT(*) AS TotalEmployees
FROM hr_analytics_cleaned;
#ATTRITION COUNT
SELECT COUNT(*) AS AttritionCount
FROM hr_analytics_cleaned
WHERE Attrition = 'Yes';
#DEPARTMENT ATTRITION
SELECT
Department,
COUNT(*) AS AttritionCount
FROM hr_analytics_cleaned
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;
#OVERTIME ATTRITION ANALYSIS
SELECT
OverTime,
COUNT(*) AS AttritionCount
FROM hr_analytics_cleaned
WHERE Attrition = 'Yes'
GROUP BY OverTime;
#EMPLOYEES BY GENDER
SELECT
Gender,
COUNT(*) AS EmployeeCount
FROM hr_analytics_cleaned
GROUP BY Gender;
#ATTRITION BY AGE GROUP
SELECT
AgeGroup,
COUNT(*) AS AttritionCount
FROM hr_analytics_cleaned
WHERE Attrition = 'Yes'
GROUP BY AgeGroup
ORDER BY AttritionCount DESC;
#AVERAGE SALARY BY DEPARTMENT
SELECT
Department,
ROUND(AVG(MonthlyIncome),2) AS AvgSalary
FROM hr_analytics_cleaned
GROUP BY Department
ORDER BY AvgSalary DESC;
#HIGHEST PAYING JOB ROLES
SELECT
JobRole,
ROUND(AVG(MonthlyIncome),2) AS AvgSalary
FROM hr_analytics_cleaned
GROUP BY JobRole
ORDER BY AvgSalary DESC;
#ATTRITION BY MARTIAL STATUS
SELECT
MaritalStatus,
COUNT(*) AS AttritionCount
FROM hr_analytics_cleaned
WHERE Attrition = 'Yes'
GROUP BY MaritalStatus;
#TOP 10 HIGHEST PAID EMPLOYEES
SELECT
EmployeeNumber,
JobRole,
Department,
MonthlyIncome
FROM hr_analytics_cleaned
ORDER BY MonthlyIncome DESC
LIMIT 10;