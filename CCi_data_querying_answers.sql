/*--Which client has conducted the most assessments in total?

SELECT client,
COUNT(assessment_date) as assessment_total
FROM maturity_assessments_dataset
GROUP BY client
ORDER BY assessment_total DESC;

Answer: Client 3*/

/*--Across how many countries are our clients assessing TRACC practices?

SELECT COUNT(DISTINCT(country)) AS number_of_countries_with_tracc
FROM maturity_assessments_dataset
WHERE tracc_practice IS NOT NULL;

--Answer: across 25 countries*/

/*--How many assessments were conducted in total for all clients, after 31 March 2018?

SELECT count(assessment_date) as total_assessments
FROM maturity_assessments_dataset
WHERE assessment_date > '2018-03-31'

-- Answer: 2598 assessments*/

/*--How many unique TRACC practices did Client 48 assess ?

SELECT COUNT(DISTINCT(tracc_practice)) AS unique_TRACC_practices_count
FROM maturity_assessments_dataset
WHERE client = 'Client 48'
AND assessment_date IS NOT NULL;

--Answer: 4 unique TRACC practices*/

/*--How many assessments were done for each practice in 2017 ?

SELECT tracc_practice, COUNT(assessment_date) AS assessment_total
FROM maturity_assessments_dataset
WHERE assessment_date LIKE '2017%'
AND assessment_date IS NOT NULL
GROUP BY tracc_practice;

--Answer: 3 301 assessments with a total of:
--937 for 5S
--660 for Focused Improvement
--4 for Leading and Managing Change
--912 for Teamwork
--788 for Visual Management*/

/*--Which clients have achieved a maturity score greater than 2.5, for the 5S and Teamwork practices ?

SELECT DISTINCT(client) AS Client
FROM maturity_assessments_dataset
WHERE tracc_maturity > '2.5'
AND tracc_practice IN ('5S', 'Teamwork');

-- Answer: Client 3, Client 13, Client 26, Client 48, Client 19, Client 21, Client 38, Client 15, Client 44, Client 28, Client 31, Client 10, Client 33, Client 6,
-- Client 1, Client 5, Client 11, Client 8, Client 24, Client 18, Client 32, Client 20, Client 41, Client 4, Client 2 */
