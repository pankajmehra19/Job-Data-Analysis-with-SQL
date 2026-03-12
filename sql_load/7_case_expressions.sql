SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category

select salary_year_avg from job_postings_fact where salary_year_avg IS NOT NULL limit 200;

SELECT
    salary_year_avg,
    CASE
        WHEN salary_year_avg BETWEEN 0 AND 100000 THEN 'Low Salary'
        WHEN salary_year_avg BETWEEN 100000 AND 150000 THEN 'Standard Salary'
        ELSE 'High'
    END AS salary_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC;



