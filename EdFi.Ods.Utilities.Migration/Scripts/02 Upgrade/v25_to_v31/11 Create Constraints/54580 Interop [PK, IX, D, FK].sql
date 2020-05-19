-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating operational context constraints'
GO

--------------------------------------------------------------------------------
-- Constraint creation scripts pulled from v3 ODS build script
-- 1027-Interoperability-Extension.SQL (2018-08-24)
--------------------------------------------------------------------------------

ALTER TABLE [interop].[OperationalContext] ADD CONSTRAINT
	[PK_OperationalContext] PRIMARY KEY CLUSTERED 
	(
	[OperationalContextUri]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [interop].[OperationalContext]
ADD CONSTRAINT [OperationalContext_DF_Id] DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [interop].[OperationalContext]
ADD CONSTRAINT [OperationalContext_DF_CreateDate] DEFAULT (GETDATE()) FOR [CreateDate] 
GO

ALTER TABLE [interop].[OperationalContext]
ADD CONSTRAINT [OperationalContext_DF_LastModifiedDate] DEFAULT (GETDATE()) FOR [LastModifiedDate]
GO

ALTER TABLE [interop].[OperationalContext] SET (LOCK_ESCALATION = TABLE)
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroup] ADD CONSTRAINT
	[PK_DescriptorEquivalenceGroup] PRIMARY KEY CLUSTERED 
	(
	[DescriptorEquivalenceGroupId]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [interop].[DescriptorEquivalenceGroup]
ADD CONSTRAINT [DescriptorEquivalenceGroup_DF_DescriptorEquivalenceGroupId] DEFAULT (newid()) FOR [DescriptorEquivalenceGroupId]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroup]
ADD CONSTRAINT [DescriptorEquivalenceGroup_DF_Id] DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroup]
ADD CONSTRAINT [DescriptorEquivalenceGroup_DF_CreateDate] DEFAULT (GETDATE()) FOR [CreateDate]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroup]
ADD CONSTRAINT [DescriptorEquivalenceGroup_DF_LastModifiedDate] DEFAULT (GETDATE()) FOR [LastModifiedDate]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroup] SET (LOCK_ESCALATION = TABLE)
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupGeneralization] ADD CONSTRAINT
	[PK_DescriptorEquivalenceGroupGeneralization] PRIMARY KEY CLUSTERED 
	(
	[DescriptorEquivalenceGroupId],
	[GeneralizationDescriptorEquivalenceGroupId]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE [interop].[DescriptorEquivalenceGroupGeneralization] ADD CONSTRAINT
	[FK_DescriptorEquivalenceGroupGeneralization_DescriptorEquivalenceGroup] FOREIGN KEY
	(
	[DescriptorEquivalenceGroupId]
	) REFERENCES [interop].[DescriptorEquivalenceGroup]
	(
	[DescriptorEquivalenceGroupId]
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE [interop].[DescriptorEquivalenceGroupGeneralization] ADD CONSTRAINT
	[FK_DescriptorEquivalenceGroupGeneralization_DescriptorEquivalenceGroupGeneralization] FOREIGN KEY
	(
	[GeneralizationDescriptorEquivalenceGroupId]
	) REFERENCES [interop].[DescriptorEquivalenceGroup]
	(
	[DescriptorEquivalenceGroupId]
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE [interop].[DescriptorEquivalenceGroupGeneralization]
ADD CONSTRAINT [DescriptorEquivalenceGroupGeneralization_DF_Id] DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupGeneralization]
ADD CONSTRAINT [DescriptorEquivalenceGroupGeneralization_DF_CreateDate] DEFAULT (GETDATE()) FOR [CreateDate]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupGeneralization]
ADD CONSTRAINT [DescriptorEquivalenceGroupGeneralization_DF_LastModifiedDate] DEFAULT (GETDATE()) FOR [LastModifiedDate]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupGeneralization] SET (LOCK_ESCALATION = TABLE)
GO

ALTER TABLE [interop].[OperationalContextDescriptorUsage] ADD CONSTRAINT
	[PK_OperationalContextDescriptorUsage] PRIMARY KEY CLUSTERED 
	(
	[OperationalContextUri],
	[DescriptorId]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE [interop].[OperationalContextDescriptorUsage] ADD CONSTRAINT
	[FK_OperationalContextDescriptorUsage_Descriptor] FOREIGN KEY
	(
	[DescriptorId]
	) REFERENCES [edfi].[Descriptor]
	(
	[DescriptorId]
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE
	
GO
ALTER TABLE [interop].[OperationalContextDescriptorUsage] ADD CONSTRAINT
	[FK_OperationalContextDescriptorUsage_OperationalContext] FOREIGN KEY
	(
	[OperationalContextUri]
	) REFERENCES [interop].[OperationalContext]
	(
	[OperationalContextUri]
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO

ALTER TABLE [interop].[OperationalContextDescriptorUsage]
ADD CONSTRAINT [OperationalContextDescriptorUsage_DF_CreateDate] DEFAULT (GETDATE()) FOR [CreateDate]
GO

ALTER TABLE [interop].[OperationalContextDescriptorUsage] SET (LOCK_ESCALATION = TABLE)
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupAssignment] ADD CONSTRAINT
	[PK_DescriptorEquivalenceGroupAssignment] PRIMARY KEY CLUSTERED 
	(
	[DescriptorId]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE [interop].[DescriptorEquivalenceGroupAssignment] ADD CONSTRAINT
	[FK_DescriptorEquivalenceGroupAssignment_DescriptorEquivalenceGroup] FOREIGN KEY
	(
	[DescriptorEquivalenceGroupId]
	) REFERENCES [interop].[DescriptorEquivalenceGroup]
	(
	[DescriptorEquivalenceGroupId]
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE [interop].[DescriptorEquivalenceGroupAssignment] ADD CONSTRAINT
	[FK_DescriptorEquivalenceGroupAssignment_Descriptor] FOREIGN KEY
	(
	[DescriptorId]
	) REFERENCES [edfi].[Descriptor]
	(
	[DescriptorId]
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE
	
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupAssignment]
ADD CONSTRAINT [DescriptorEquivalenceGroupAssignment_DF_Id] DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupAssignment]
ADD CONSTRAINT [DescriptorEquivalenceGroupAssignment_DF_CreateDate] DEFAULT (GETDATE()) FOR [CreateDate]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupAssignment]
ADD CONSTRAINT [DescriptorEquivalenceGroupAssignment_DF_LastModifiedDate] DEFAULT (GETDATE()) FOR [LastModifiedDate]
GO

ALTER TABLE [interop].[DescriptorEquivalenceGroupAssignment] SET (LOCK_ESCALATION = TABLE)
GO
