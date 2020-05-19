-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAcademicRecord_PK] on [edfi].[StudentAcademicRecord]'
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [StudentAcademicRecord_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId])
GO
PRINT N'Creating index [UX_StudentAcademicRecord_Id] on [edfi].[StudentAcademicRecord]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentAcademicRecord_Id] ON [edfi].[StudentAcademicRecord] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentAcademicRecord_CreditType1] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_CreditType1] ON [edfi].[StudentAcademicRecord] ([CumulativeAttemptedCreditTypeId])
GO
PRINT N'Creating index [FK_StudentAcademicRecord_CreditType] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_CreditType] ON [edfi].[StudentAcademicRecord] ([CumulativeEarnedCreditTypeId])
GO
PRINT N'Creating index [FK_StudentAcademicRecord_EducationOrganization] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_EducationOrganization] ON [edfi].[StudentAcademicRecord] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentAcademicRecord_SchoolYearType] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_SchoolYearType] ON [edfi].[StudentAcademicRecord] ([SchoolYear])
GO
PRINT N'Creating index [FK_StudentAcademicRecord_CreditType3] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_CreditType3] ON [edfi].[StudentAcademicRecord] ([SessionAttemptedCreditTypeId])
GO
PRINT N'Creating index [FK_StudentAcademicRecord_CreditType2] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_CreditType2] ON [edfi].[StudentAcademicRecord] ([SessionEarnedCreditTypeId])
GO
PRINT N'Creating index [FK_StudentAcademicRecord_Student] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_Student] ON [edfi].[StudentAcademicRecord] ([StudentUSI])
GO
PRINT N'Creating index [FK_StudentAcademicRecord_TermDescriptor] on [edfi].[StudentAcademicRecord]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecord_TermDescriptor] ON [edfi].[StudentAcademicRecord] ([TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAcademicRecord]'
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [StudentAcademicRecord_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [StudentAcademicRecord_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [StudentAcademicRecord_DF_Id] DEFAULT (newid()) FOR [Id]
GO

