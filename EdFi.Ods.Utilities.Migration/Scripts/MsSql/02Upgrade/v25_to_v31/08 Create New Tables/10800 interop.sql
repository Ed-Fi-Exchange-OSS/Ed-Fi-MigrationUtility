-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating operational context schema and tables'
GO

--------------------------------------------------------------------------------
-- Schema/table creation scripts pulled from v3 ODS build script
-- 1027-Interoperability-Extension.SQL (2018-08-24)
--------------------------------------------------------------------------------

CREATE SCHEMA interop AUTHORIZATION dbo
GO

CREATE TABLE [interop].[OperationalContext]
	(
	[OperationalContextUri] nvarchar(255) NOT NULL,
	[DisplayName] nvarchar(100) NOT NULL,
	[OrganizationName] nvarchar(50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL
	)  ON [PRIMARY]
GO

CREATE TABLE [interop].[DescriptorEquivalenceGroup]
	(
	[DescriptorEquivalenceGroupId] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL	
	)  ON [PRIMARY]
GO

CREATE TABLE [interop].[DescriptorEquivalenceGroupGeneralization]
	(
	[DescriptorEquivalenceGroupId] [uniqueidentifier] NOT NULL,
	[GeneralizationDescriptorEquivalenceGroupId] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL	
	)  ON [PRIMARY]
GO

CREATE TABLE [interop].[OperationalContextDescriptorUsage]
	(
	[OperationalContextUri] nvarchar(255) NOT NULL,
	[DescriptorId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL)  ON [PRIMARY]
GO

CREATE TABLE [interop].[DescriptorEquivalenceGroupAssignment]
	(
	[DescriptorId] [int] NOT NULL,
	[DescriptorEquivalenceGroupId] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL	
	)  ON [PRIMARY]
GO

