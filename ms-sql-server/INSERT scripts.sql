-- Create our companies
SET IDENTITY_INSERT companies ON
INSERT INTO companies (id, company_name, ceo_name, parent_company_id) VALUES (1, 'Data Dweebs, Inc.', 'Orissa Laurion', NULL)
INSERT INTO companies (id, company_name, ceo_name, parent_company_id) VALUES (2, 'SQL Server Consultants, LLC', 'Tyden Teems', 1)
INSERT INTO companies (id, company_name, ceo_name, parent_company_id) VALUES (3, 'IT Dimensions Consulting, LLC', 'Reyansh Jelks', NULL)
SET IDENTITY_INSERT companies OFF

-- Create our customers
SET IDENTITY_INSERT customers ON
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (1, 1, 'Acme, Inc.', 'Ashton', 'Gallik', '245-836-5608', '388 S Buffalo Ave', 'Suite 100', 'Compton', 'CA', '90221')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (2, 1, 'Industrial Products, LLC', 'Ivann', 'Mikula', '523-699-9728', '797 NE 54th St', 'Suite 205', 'Moorefield', 'WV', '26836')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (3, 1, 'AutoMotive, Inc.', 'Ambra', 'Tenney', '445-688-3778', '561 N Cedar Rock Ln', '', 'Levant', 'ME', '04456')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (4, 1, 'McKinsey''s Auto Body Repair, LLC', 'Melissa', 'McKinsey', '884-237-6764', '790 S Summer Blvd', '', 'Seward', 'AK', '99664')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (5, 2, 'Fonteboa & Associates, LLP', 'Milos', 'Fonteboa', '776-869-0469', '8490 NW Walnut Cv', '', 'Troy', 'MO', '63379')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (6, 2, 'Sarullo''s Pizzeria', 'Lovette', 'Sarullo', '826-834-0749', '2840 N Canal Br', 'Suite 110', 'Lubbock', 'TX', '79412')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (7, 3, 'Massachusetts Department of Transportation', 'Kaysi', 'Copps', '274-233-7536', '1000 NW Embleton St', 'Suite 400', 'Forestdale', 'MA', '02644')
SET IDENTITY_INSERT customers OFF

-- Create our staff
SET IDENTITY_INSERT staff ON
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (1, 1, 'Braidyn', 'Armlin', 'FTE', 32.75, 95.00, 40, 'Project Manager', '625-362-3729', '3467 W Poplar St', '', 'Corona Del Mar', 'CA', '92625')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (2, 1, 'Manpreet', 'Lamer', 'FTE', 30.25, 95.00, 40, 'Project Manager', '532-956-3139', '2061 NW Mahon Cir', '', 'Corona Del Mar', 'CA', '92625')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (3, 1, 'Nabila', 'Sarcinelli', 'Contract', 55.00, 125.00, 32, 'Technical Consultant', '235-454-0685', '8565 SW Riverside Ct', 'Apt 1204', 'Yonkers', 'NY', '10710')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (4, 1, 'Malaak', 'Salva', 'Contract', 75.00, 175.00, 20, 'Senior Database Administrator', '535-445-7057', '7353 N Wrights Rd', '', 'Eustace', 'TX', '75124')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (5, 2, 'Margeurita', 'Boulier', 'FTE', 62.50, 150.00, 40, 'Director, Engineering', '858-979-2288', '2906 Longbrake Ct', '', 'Rome', 'IN', '47574')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (6, 2, 'Laney', 'Puglisi', 'FTE', 50.00, 135.00, 40, 'Senior Software Engineer', '874-256-5706', '368 NE Louisiana Cv', '', 'Newell', 'WV', '26050')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (7, 3, 'Rocky', 'Nutall', 'FTE', 45.00, 125.00, 40, 'Principal Consultant', '468-795-5494', '3502 NE 19th St', '', 'Mangham', 'LA', '71259')
SET IDENTITY_INSERT staff OFF

-- Create projects
SET IDENTITY_INSERT projects ON
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (1, 1, 'Initial Product Data Warehousing', '20190101', '20190331', '20181205', 23500.00, 'COMPLETE', 'X')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (2, 1, 'Product Dashboard Development', '20190315', '20190531', '20190203', 17400.00, 'COMPLETE', 'X')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (3, 1, 'Initial Customer & Sales Data Warehousing', '20190415', '20190831', '20190323', 38950.00, 'IN PROGRESS', 'R')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (4, 2, 'Data Integrity Assessment', '20190801', '20191130', '20190708', 29325.00, 'COMPLETE', 'X')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (5, 2, 'Data Cleanup Implementation', '20200101', '20200331', '20191213', 22450.00, 'IN PROGRESS', 'G')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (6, 3, 'Auto Parts Database Development - Phase 1', '20191201', '20200430', '20191019', 65150.00, 'IN PROGRESS', 'Y')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (7, 4, 'Customer Database Upgrade', '20200201', '20200430', '20200107', 34100.00, 'PENDING', 'G')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (8, 4, 'Point of Sale System Migration', NULL, NULL, NULL, 19450.00, 'PROPOSED', 'X')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (9, 5, 'Accounting System Cloud Backup Implementation', '20200115', '20200215', '20200105', 4500.00, 'PENDING', 'G')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (10, 6, 'Franchise Market Data Mining - Phase 1', '20200201', '20200331', '20200108', 11500.00, 'PENDING', 'Y')
INSERT INTO projects (id, customer_id, project_name, start_date, end_date, contract_signing_date, project_budget, project_status, health_indicator) VALUES (11, 7, 'Regulatory Data Collection Analysis', '20200101', '20200430', '20191113', 35765.00, 'IN PROGRESS', 'G')
SET IDENTITY_INSERT projects OFF

-- Create tasks
SET IDENTITY_INSERT tasks ON
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments)
VALUES (1, 1, 1, '', '', 0.00, '', '')
SET IDENTITY_INSERT tasks OFF

SELECT * FROM tasks