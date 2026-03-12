SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
    job_postings_fact
LIMIT 10;


SELECT
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    month
ORDER BY
    job_posted_count;

SELECT * FROM job_postings_fact LIMIT 10;

SELECT
    job_schedule_type,
    AVG(salary_year_avg) AS avg_salary_yearly,
    AVG(salary_hour_avg) AS avg_salary_hourly
FROM
    job_postings_fact
WHERE
    job_posted_date > '01-06-2023 00:00:00'
GROUP BY
    job_schedule_type;

SELECT * FROM company_dim LIMIT 10;

SELECT DISTINCT
    company_dim.name
FROM
    job_postings_fact
JOIN
    company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_health_insurance = TRUE
    AND EXTRACT(QUARTER FROM job_posted_date) = 2
    AND EXTRACT(YEAR FROM job_posted_date) = 2023;



