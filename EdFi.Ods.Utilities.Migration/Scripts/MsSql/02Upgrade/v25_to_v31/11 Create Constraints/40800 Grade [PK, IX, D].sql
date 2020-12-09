-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Grade_PK] on [edfi].[Grade]'
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [Grade_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [GradeTypeDescriptorId], [GradingPeriodDescriptorId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [UX_Grade_Id] on [edfi].[Grade]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Grade_Id] ON [edfi].[Grade] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_Grade_StudentSectionAssociation] on [edfi].[Grade]'
GO
CREATE NONCLUSTERED INDEX [FK_Grade_StudentSectionAssociation] ON [edfi].[Grade] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_Grade_GradeTypeDescriptor] on [edfi].[Grade]'
GO
CREATE NONCLUSTERED INDEX [FK_Grade_GradeTypeDescriptor] ON [edfi].[Grade] ([GradeTypeDescriptorId])
GO

PRINT N'Creating index [FK_Grade_GradingPeriod] on [edfi].[Grade]'
GO
CREATE NONCLUSTERED INDEX [FK_Grade_GradingPeriod] ON [edfi].[Grade] ([GradingPeriodDescriptorId], [GradingPeriodSequence], [SchoolId], [GradingPeriodSchoolYear])
GO

PRINT N'Creating index [FK_Grade_PerformanceBaseConversionDescriptor] on [edfi].[Grade]'
GO
CREATE NONCLUSTERED INDEX [FK_Grade_PerformanceBaseConversionDescriptor] ON [edfi].[Grade] ([PerformanceBaseConversionDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[Grade]'
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [Grade_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [Grade_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [Grade_DF_Id] DEFAULT (newid()) FOR [Id]
GO
