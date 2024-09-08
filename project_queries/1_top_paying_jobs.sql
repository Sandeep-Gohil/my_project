--TOP 10 paying Data Analyst job for remote location
--why I'm doing it? To offer insight into the top-paying opportunity 
--and how one could expect to earn after becoming one.
--I am also filtering further where no degree is required.

SELECT	
	job_postings_fact.job_id,
	job_title,
	job_location,
	job_schedule_type,
	salary_year_avg,
	job_posted_date,
    company_dim.name AS company_name,
    job_no_degree_mention
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND 
    job_no_degree_mention = TRUE AND
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10;
