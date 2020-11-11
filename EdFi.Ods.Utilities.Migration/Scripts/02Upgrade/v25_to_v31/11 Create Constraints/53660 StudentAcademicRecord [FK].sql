-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAcademicRecord]'
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_CreditTypeDescriptor] FOREIGN KEY ([CumulativeEarnedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_CreditTypeDescriptor1] FOREIGN KEY ([CumulativeAttemptedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_CreditTypeDescriptor2] FOREIGN KEY ([SessionEarnedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_CreditTypeDescriptor3] FOREIGN KEY ([SessionAttemptedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
ALTER TABLE [edfi].[StudentAcademicRecord] ADD CONSTRAINT [FK_StudentAcademicRecord_TermDescriptor] FOREIGN KEY ([TermDescriptorId]) REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO
