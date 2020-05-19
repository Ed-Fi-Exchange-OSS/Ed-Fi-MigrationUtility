-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAssessmentAccommodation]'
GO
ALTER TABLE [edfi].[StudentAssessmentAccommodation] ADD CONSTRAINT [FK_StudentAssessmentAccommodation_StudentAssessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) REFERENCES [edfi].[StudentAssessment] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentAssessmentAccommodation] ADD CONSTRAINT [FK_StudentAssessmentAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId]) REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId])
GO
