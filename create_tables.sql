-- Create transactions table
CREATE TABLE transactions (
  transaction_id INT,
  product_id INT,
  customer_id INT,
  transaction_date VARCHAR(512),
  online_order VARCHAR(512),
  order_status VARCHAR(512),
  brand VARCHAR(512),
  product_line VARCHAR(512),
  product_class VARCHAR(512),
  product_size VARCHAR(512),
  list_price FLOAT,
  standard_cost VARCHAR(512),
  product_first_sold_date VARCHAR(512)
);

-- Create cust_address table
CREATE TABLE cust_address (
  customer_id INT,
  address VARCHAR(512),
  postcode INT,
  state VARCHAR(512),
  country VARCHAR(512),
  property_valuation INT
);

-- Create new_cust_list table
CREATE TABLE new_cust_list (
  first_name VARCHAR(512),
  last_name VARCHAR(512),
  gender VARCHAR(512),
  past_3_years_bike_related_purchases INT,
  DOB VARCHAR(512),
  job_title VARCHAR(512),
  job_industry_category VARCHAR(512),
  wealth_segment VARCHAR(512),
  deceased_indicator VARCHAR(512),
  owns_car VARCHAR(512),
  tenure INT,
  address VARCHAR(512),
  postcode INT,
  state VARCHAR(512),
  country VARCHAR(512),
  property_valuation VARCHAR(512),
  Rank INT,
  Value VARCHAR(512)
);

-- Create cust_demographic table
CREATE TABLE cust_demographic (
  customer_id INT,
  first_name VARCHAR(512),
  last_name VARCHAR(512),
  gender VARCHAR(512),
  past_3_years_bike_related_purchases INT,
  DOB VARCHAR(512),
  job_title VARCHAR(512),
  job_industry_category VARCHAR(512),
  wealth_segment VARCHAR(512),
  deceased_indicator VARCHAR(512),
  owns_car VARCHAR(512),
  tenure VARCHAR(512)
);
