/* We_are_now_adding_the_data_into_the_tables_that_I_have_created_into_my_learning_database_these_are_CSV_files_and
In_this_session_we_are_adding_file_path_for_copy_the_data_to_our_tables.
*/



COPY company_dim
FROM 'S:\practice_folder\my_project\csv_files\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'S:\practice_folder\my_project\csv_files\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'S:\practice_folder\my_project\csv_files\job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'S:\practice_folder\my_project\csv_files\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

SELECT *
FROM job_postings_fact

SELECT *
FROM company_dim

SELECT * 
FROM skills_dim

SELECT *
FROM skills_job_dim