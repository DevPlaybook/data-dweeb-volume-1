CREATE TABLE [companies](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[company_name] [varchar](50) NULL,
	[ceo_name] [varchar](50) NULL,
	[parent_company_id] [bigint] NULL,
 CONSTRAINT [PK_companies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[customers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[company_id] [bigint] NOT NULL,
	[customer_name] [varchar](50) NULL,
	[contact_first_name] [varchar](50) NULL,
	[contact_last_name] [varchar](50) NULL,
	[phone_number] [varchar](12) NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[zip_code] [varchar](10) NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[staff](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[company_id] [bigint] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[employment_status] [varchar](20) NULL,
	[hourly_cost] [decimal](12, 2) NULL,
	[standard_billable_rate] [decimal](12, 2) NULL,
	[hours_per_week] [decimal](12, 2) NULL,
	[resource_title] [varchar](50) NULL,
	[phone_number] [varchar](12) NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[zip_code] [varchar](10) NULL,
 CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[projects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[customer_id] [bigint] NOT NULL,
	[project_name] [varchar](50) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[contract_signing_date] [date] NULL,
	[project_budget] [decimal](18, 2) NULL,
	[project_status] [varchar](25) NULL,
	[health_indicator] [varchar](1) NULL,
 CONSTRAINT [PK_projects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tasks](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[project_id] [bigint] NOT NULL,
	[staff_id] [bigint] NOT NULL,
	[task_name] [varchar](50) NULL,
	[due_date] [date] NULL,
	[estimated_hours] [decimal](12, 2) NULL,
	[task_status] [varchar](25) NULL,
	[task_comments] [text] NULL,
 CONSTRAINT [PK_tasks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-- FOREIGN KEYS

ALTER TABLE [dbo].[companies]  WITH CHECK ADD  CONSTRAINT [FK_companies_companies] FOREIGN KEY([parent_company_id])
REFERENCES [dbo].[companies] ([id])
GO

ALTER TABLE [dbo].[companies] CHECK CONSTRAINT [FK_companies_companies]
GO

ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FK_customers_companies] FOREIGN KEY([company_id])
REFERENCES [dbo].[companies] ([id])
GO

ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FK_customers_companies]
GO

ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_companies] FOREIGN KEY([company_id])
REFERENCES [dbo].[companies] ([id])
GO

ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_companies]
GO

ALTER TABLE [dbo].[projects]  WITH CHECK ADD  CONSTRAINT [FK_projects_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
GO

ALTER TABLE [dbo].[projects] CHECK CONSTRAINT [FK_projects_customers]
GO

ALTER TABLE [dbo].[tasks]  WITH CHECK ADD  CONSTRAINT [FK_tasks_projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO

ALTER TABLE [dbo].[tasks] CHECK CONSTRAINT [FK_tasks_projects]
GO

ALTER TABLE [dbo].[tasks]  WITH CHECK ADD  CONSTRAINT [FK_tasks_staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([id])
GO

ALTER TABLE [dbo].[tasks] CHECK CONSTRAINT [FK_tasks_staff]
GO
