-- Clean brand
UPDATE transactions SET brand='Others' WHERE brand = '';

-- Clean product_line
UPDATE transactions SET product_line='Undefined' WHERE product_line = '';

-- Clean gender
UPDATE cust_demographic SET gender='Female' WHERE gender IN ('F', 'Femal');
UPDATE cust_demographic SET gender='Male' WHERE gender = 'M';
UPDATE cust_demographic SET gender='Others' WHERE gender = 'U';

-- Fill empty job titles
UPDATE cust_demographic SET job_title='Not Updated' WHERE job_title = '';
UPDATE new_cust_list SET job_title='Not Updated' WHERE job_title = '';

-- Clean state names
UPDATE cust_address SET state='Queensland' WHERE state = 'QLD';
UPDATE cust_address SET state='Victoria' WHERE state = 'VIC';
UPDATE new_cust_list SET state='New South Wales' WHERE state = 'NSW';

-- Add age column
ALTER TABLE cust_demographic ADD COLUMN age_column INTEGER;
UPDATE cust_demographic SET age_column = EXTRACT(YEAR FROM AGE(dob::date)) WHERE dob IS NOT NULL;

ALTER TABLE new_cust_list ADD COLUMN age_column INTEGER;
UPDATE new_cust_list SET age_column = EXTRACT(YEAR FROM AGE(dob::date)) WHERE dob IS NOT NULL;
