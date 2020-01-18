-- First we will delete all the records from these tables
-- Note that we are delete from the "bottom up" in terms of our hierarchy
DELETE FROM tasks
DELETE FROM projects
DELETE FROM customers
DELETE FROM staff
DELETE FROM companies

-- Now we are going to "reseed" our identity fields. This will be an uncommon task
--   since you usually don't want to mess with your identity fields/primary keys like this.
-- However, since we have just deleted all the data from these tables, we want to reset our
--   identity fields so that our insert statements below don't cause conflicts in the future.
-- We will use the DBCC (Database Console Commands) command and the CHECKIDENT function to reset the identity counter to 1
DBCC CHECKIDENT('[companies]', RESEED, 1)
DBCC CHECKIDENT('[customers]', RESEED, 1)
DBCC CHECKIDENT('[staff]', RESEED, 1)
DBCC CHECKIDENT('[projects]', RESEED, 1)
DBCC CHECKIDENT('[tasks]', RESEED, 1)

-- INSERT statements to create our companies
SET IDENTITY_INSERT companies ON
INSERT INTO companies (id, company_name, ceo_name, parent_company_id) VALUES (1, 'Data Dweebs, Inc.', 'Orissa Laurion', NULL)
INSERT INTO companies (id, company_name, ceo_name, parent_company_id) VALUES (2, 'SQL Server Consultants, LLC', 'Tyden Teems', 1)
INSERT INTO companies (id, company_name, ceo_name, parent_company_id) VALUES (3, 'IT Dimensions Consulting, LLC', 'Reyansh Jelks', NULL)
SET IDENTITY_INSERT companies OFF
-- END companies INSERTs

-- INSERT statements to create our customers
SET IDENTITY_INSERT customers ON
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (1, 1, 'Acme, Inc.', 'Ashton', 'Gallik', '245-836-5608', '388 S Buffalo Ave', 'Suite 100', 'Compton', 'CA', '90221')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (2, 1, 'Industrial Products, LLC', 'Ivann', 'Mikula', '523-699-9728', '797 NE 54th St', 'Suite 205', 'Moorefield', 'WV', '26836')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (3, 1, 'AutoMotive, Inc.', 'Ambra', 'Tenney', '445-688-3778', '561 N Cedar Rock Ln', '', 'Levant', 'ME', '04456')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (4, 1, 'McKinsey''s Auto Body Repair, LLC', 'Melissa', 'McKinsey', '884-237-6764', '790 S Summer Blvd', '', 'Seward', 'AK', '99664')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (5, 2, 'Fonteboa & Associates, LLP', 'Milos', 'Fonteboa', '776-869-0469', '8490 NW Walnut Cv', '', 'Troy', 'MO', '63379')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (6, 2, 'Sarullo''s Pizzeria', 'Lovette', 'Sarullo', '826-834-0749', '2840 N Canal Br', 'Suite 110', 'Lubbock', 'TX', '79412')
INSERT INTO customers (id, company_id, customer_name, contact_first_name, contact_last_name, phone_number, address1, address2, city, state, zip_code) VALUES (7, 3, 'Massachusetts Department of Transportation', 'Kaysi', 'Copps', '274-233-7536', '1000 NW Embleton St', 'Suite 400', 'Forestdale', 'MA', '02644')
SET IDENTITY_INSERT customers OFF
-- END customers INSERTs

-- INSERT statements to create our staff
SET IDENTITY_INSERT staff ON
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (1, 1, 'Braidyn', 'Armlin', 'FTE', 32.75, 95.00, 40, 'Project Manager', '625-362-3729', '3467 W Poplar St', '', 'Corona Del Mar', 'CA', '92625')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (2, 1, 'Manpreet', 'Lamer', 'FTE', 30.25, 95.00, 40, 'Project Manager', '532-956-3139', '2061 NW Mahon Cir', '', 'Corona Del Mar', 'CA', '92625')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (3, 1, 'Nabila', 'Sarcinelli', 'Contract', 55.00, 125.00, 32, 'Technical Consultant', '235-454-0685', '8565 SW Riverside Ct', 'Apt 1204', 'Yonkers', 'NY', '10710')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (4, 1, 'Malaak', 'Salva', 'Contract', 75.00, 175.00, 20, 'Senior Database Administrator', '535-445-7057', '7353 N Wrights Rd', '', 'Eustace', 'TX', '75124')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (5, 2, 'Margeurita', 'Boulier', 'FTE', 62.50, 150.00, 40, 'Director, Engineering', '858-979-2288', '2906 Longbrake Ct', '', 'Rome', 'IN', '47574')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (6, 2, 'Laney', 'Puglisi', 'FTE', 50.00, 135.00, 40, 'Senior Software Engineer', '874-256-5706', '368 NE Louisiana Cv', '', 'Newell', 'WV', '26050')
INSERT INTO staff (id, company_id, first_name, last_name, employment_status, hourly_cost, standard_billable_rate, hours_per_week, resource_title, phone_number, address1, address2, city, state, zip_code) VALUES (7, 3, 'Rocky', 'Nutall', 'FTE', 45.00, 125.00, 40, 'Principal Consultant', '468-795-5494', '3502 NE 19th St', '', 'Mangham', 'LA', '71259')
SET IDENTITY_INSERT staff OFF
-- END staff INSERTs

-- INSERT statements to create projects
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
-- END projects INSERTs

-- INSERT statements to create tasks
SET IDENTITY_INSERT tasks ON
-- Acme, Inc. - Initial Product Data Warehousing
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (1, 1, 1, 'Develop Project Plan', '20190115', 60.00, 'COMPLETE', 'Plan developed and delivered')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (2, 1, 1, 'General Project Management', '20190331', 60.00, 'COMPLETE', 'Project closed successfully on 3/24/2019')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (3, 1, 3, 'Create Technical Assessment Blueprint', '20190131', 20.00, 'COMPLETE', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (4, 1, 3, 'Develop ETL Packages', '20190315', 60.00, 'COMPLETE', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (5, 1, 4, 'Install and Validate ETL Packages', '20190331', 12.00, 'COMPLETE', '')
-- Acme, Inc. - Product Dashboard Development
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (6, 2, 1, 'Develop Project Plan', '20190331', 20.00, 'COMPLETE', 'Plan developed and delivered')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (7, 2, 1, 'General Project Management', '20190531', 20.00, 'COMPLETE', 'Project closed successfully on 5/28/2019')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (8, 2, 3, 'Document Dashboard Requirements', '20190415', 30.00, 'COMPLETE', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (9, 2, 3, 'Develop Product Dashboards', '20190520', 75.00, 'COMPLETE', 'Six dashboards created with total of 32 KPIs')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (10, 2, 4, 'Review and Tweak Database Indexes', '20190525', 5.00, 'COMPLETE', 'Four indexes added based on dashboard queries')
-- Acme, Inc. - Initial Customer & Sales Data Warehousing
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (11, 3, 1, 'Develop Project Plan', '20190531', 50.00, 'COMPLETE', 'Plan developed and delivered')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (12, 3, 1, 'General Project Management', '20190831', 60.00, 'COMPLETE', 'Project closed successfully on 9/3/2019 (3 day delay - customer sign off was delayed due to project owner PTO)')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (13, 3, 3, 'Create Technical Assessment Blueprint', '20190615', 50.00, 'COMPLETE', 'Assessment delivered on 6/10/2019')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (14, 3, 3, 'Create ERD and review with DBA', '20190630', 20.00, 'COMPLETE', 'ERD completed and approved by DBA on 6/28/2019')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (15, 3, 3, 'Develop ETL packages', '20190731', 85.00, 'COMPLETE', 'Four ETL packages created to pull data from four disparate systems')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (16, 3, 4, 'Review and comment/approve ERD', '20190710', 15.00, 'COMPLETE', 'ERD approved on 6/28/2019')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (17, 3, 4, 'Document database indexing and plan for DR/HA', '20190731', 15.00, 'COMPLETE', 'Plan delivered on 8/2')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (18, 3, 4, 'Install and Validate ETL Packages', '20190825', 20.00, 'COMPLETE', 'Installation complete and validated on 8/24/2019')
-- Industrial Products - Data Cleanup Implementation
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (19, 5, 2, 'Develop Project Plan', '20200115', 20.00, 'IN PROGRESS', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (20, 5, 2, 'General Project Management', '20200331', 40.00, 'IN PROGRESS', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (21, 5, 2, 'Business Requirements Document (BRD)', '20200215', 30.00, 'IN PROGRESS', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (22, 5, NULL, 'Develop & Test Data Scrubbing Routines', '20200315', 85.00, 'PENDING', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (23, 5, NULL, 'Finalize and Deliver Data Quality Analysis Report', '20200331', 20.00, 'PENDING', '')
-- McKinsey's Auto Body Repair, LLC - Customer Database Upgrade
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (24, 7, 2, 'Develop Project Plan', '20200229', 40.00, 'PENDING', '')
-- Sarullo's Pizzeria - Franchise Market Data Mining - Phase 1
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (25, 10, 5, 'Develop Project Plan', '20200229', 15.00, 'PENDING', '')
-- Massachusetts Department of Transportation - Regulatory Data Collection Analysis
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (26, 11, 7, 'Develop Project Plan', '20200105', 10.00, 'COMPLETE', 'Project plan complete')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (27, 11, 7, 'Analyze & Document Data Sources', '20200125', 75.00, 'IN PROGRESS', 'Six data sources identified so far')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (28, 11, 7, 'Centralize Data in Staging Database', '20200205', 80.00, 'PENDING', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (29, 11, 7, 'Document Data Validation Rules', '20200229', 40.00, 'PENDING', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (30, 11, 7, 'Perform Data Analysis', '20200331', 70.00, 'PENDING', '')
INSERT INTO tasks (id, project_id, staff_id, task_name, due_date, estimated_hours, task_status, task_comments) VALUES (31, 11, 7, 'Create and Deliver Final Report', '20200430', 20.00, 'PENDING', '')
SET IDENTITY_INSERT tasks OFF
-- END tasks INSERTs