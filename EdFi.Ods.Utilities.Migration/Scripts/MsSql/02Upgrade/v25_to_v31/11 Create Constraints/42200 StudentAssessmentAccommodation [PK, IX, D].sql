-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentAccommodation_PK] on [edfi].[StudentAssessmentAccommodation]'
GO
ALTER TABLE [edfi].[StudentAssessmentAccommodation] ADD CONSTRAINT [StudentAssessmentAccommodation_PK] PRIMARY KEY CLUSTERED  ([AccommodationDescriptorId], [AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAssessmentAccommodation_AccommodationDescriptor] on [edfi].[StudentAssessmentAccommodation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentAccommodation_AccommodationDescriptor] ON [edfi].[StudentAssessmentAccommodation] ([AccommodationDescriptorId])
GO

PRINT N'Creating index [FK_StudentAssessmentAccommodation_StudentAssessment] on [edfi].[StudentAssessmentAccommodation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentAccommodation_StudentAssessment] ON [edfi].[StudentAssessmentAccommodation] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentAssessmentAccommodation]'
GO
ALTER TABLE [edfi].[StudentAssessmentAccommodation] ADD CONSTRAINT [StudentAssessmentAccommodation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
