-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.
CREATE TABLE [auth].[EducationOrganizationIdToEducationOrganizationId] (
    [SourceEducationOrganizationId] INT NOT NULL,
    [TargetEducationOrganizationId] INT NOT NULL,
    CONSTRAINT [EducationOrganizationIdToEducationOrganizationId_PK] PRIMARY KEY CLUSTERED ([SourceEducationOrganizationId] ASC, [TargetEducationOrganizationId] ASC)
);
GO

CREATE TABLE [edfi].[BarrierToInternetAccessInResidenceDescriptor] (
    [BarrierToInternetAccessInResidenceDescriptorId] INT NOT NULL,
    CONSTRAINT [BarrierToInternetAccessInResidenceDescriptor_PK] PRIMARY KEY CLUSTERED ([BarrierToInternetAccessInResidenceDescriptorId] ASC),
    CONSTRAINT [FK_BarrierToInternetAccessInResidenceDescriptor_Descriptor] FOREIGN KEY ([BarrierToInternetAccessInResidenceDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
);
GO

CREATE TABLE [edfi].[CourseTranscriptPartialCourseTranscriptAwards] (
    [AwardDate]                       DATE           NOT NULL,
    [CourseAttemptResultDescriptorId] INT            NOT NULL,
    [CourseCode]                      NVARCHAR (60)  NOT NULL,
    [CourseEducationOrganizationId]   INT            NOT NULL,
    [EducationOrganizationId]         INT            NOT NULL,
    [SchoolYear]                      SMALLINT       NOT NULL,
    [StudentUSI]                      INT            NOT NULL,
    [TermDescriptorId]                INT            NOT NULL,
    [EarnedCredits]                   DECIMAL (9, 3) NOT NULL,
    [MethodCreditEarnedDescriptorId]  INT            NULL,
    [LetterGradeEarned]               NVARCHAR (20)  NULL,
    [NumericGradeEarned]              NVARCHAR (20)  NULL,
    [CreateDate]                      DATETIME2 (7)  CONSTRAINT [CourseTranscriptPartialCourseTranscriptAwards_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [CourseTranscriptPartialCourseTranscriptAwards_PK] PRIMARY KEY CLUSTERED ([AwardDate] ASC, [CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC),
    CONSTRAINT [FK_CourseTranscriptPartialCourseTranscriptAwards_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CourseTranscriptPartialCourseTranscriptAwards_MethodCreditEarnedDescriptor] FOREIGN KEY ([MethodCreditEarnedDescriptorId]) REFERENCES [edfi].[MethodCreditEarnedDescriptor] ([MethodCreditEarnedDescriptorId])
);
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptPartialCourseTranscriptAwards_CourseTranscript]
    ON [edfi].[CourseTranscriptPartialCourseTranscriptAwards]([CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptPartialCourseTranscriptAwards_MethodCreditEarnedDescriptor]
    ON [edfi].[CourseTranscriptPartialCourseTranscriptAwards]([MethodCreditEarnedDescriptorId] ASC);
GO

CREATE TABLE [edfi].[InternetAccessTypeInResidenceDescriptor] (
    [InternetAccessTypeInResidenceDescriptorId] INT NOT NULL,
    CONSTRAINT [InternetAccessTypeInResidenceDescriptor_PK] PRIMARY KEY CLUSTERED ([InternetAccessTypeInResidenceDescriptorId] ASC),
    CONSTRAINT [FK_InternetAccessTypeInResidenceDescriptor_Descriptor] FOREIGN KEY ([InternetAccessTypeInResidenceDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
);
GO

CREATE TABLE [edfi].[InternetPerformanceInResidenceDescriptor] (
    [InternetPerformanceInResidenceDescriptorId] INT NOT NULL,
    CONSTRAINT [InternetPerformanceInResidenceDescriptor_PK] PRIMARY KEY CLUSTERED ([InternetPerformanceInResidenceDescriptorId] ASC),
    CONSTRAINT [FK_InternetPerformanceInResidenceDescriptor_Descriptor] FOREIGN KEY ([InternetPerformanceInResidenceDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
);
GO

CREATE TABLE [edfi].[PrimaryLearningDeviceAccessDescriptor] (
    [PrimaryLearningDeviceAccessDescriptorId] INT NOT NULL,
    CONSTRAINT [PrimaryLearningDeviceAccessDescriptor_PK] PRIMARY KEY CLUSTERED ([PrimaryLearningDeviceAccessDescriptorId] ASC),
    CONSTRAINT [FK_PrimaryLearningDeviceAccessDescriptor_Descriptor] FOREIGN KEY ([PrimaryLearningDeviceAccessDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
);
GO

CREATE TABLE [edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor] (
    [PrimaryLearningDeviceAwayFromSchoolDescriptorId] INT NOT NULL,
    CONSTRAINT [PrimaryLearningDeviceAwayFromSchoolDescriptor_PK] PRIMARY KEY CLUSTERED ([PrimaryLearningDeviceAwayFromSchoolDescriptorId] ASC),
    CONSTRAINT [FK_PrimaryLearningDeviceAwayFromSchoolDescriptor_Descriptor] FOREIGN KEY ([PrimaryLearningDeviceAwayFromSchoolDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
);
GO

CREATE TABLE [edfi].[PrimaryLearningDeviceProviderDescriptor] (
    [PrimaryLearningDeviceProviderDescriptorId] INT NOT NULL,
    CONSTRAINT [PrimaryLearningDeviceProviderDescriptor_PK] PRIMARY KEY CLUSTERED ([PrimaryLearningDeviceProviderDescriptorId] ASC),
    CONSTRAINT [FK_PrimaryLearningDeviceProviderDescriptor_Descriptor] FOREIGN KEY ([PrimaryLearningDeviceProviderDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
);
GO

CREATE TABLE [edfi].[StudentSectionAttendanceEventClassPeriod] (
    [AttendanceEventCategoryDescriptorId] INT            NOT NULL,
    [ClassPeriodName]                     NVARCHAR (60)  NOT NULL,
    [EventDate]                           DATE           NOT NULL,
    [LocalCourseCode]                     NVARCHAR (60)  NOT NULL,
    [SchoolId]                            INT            NOT NULL,
    [SchoolYear]                          SMALLINT       NOT NULL,
    [SectionIdentifier]                   NVARCHAR (255) NOT NULL,
    [SessionName]                         NVARCHAR (60)  NOT NULL,
    [StudentUSI]                          INT            NOT NULL,
    [CreateDate]                          DATETIME2 (7)  CONSTRAINT [StudentSectionAttendanceEventClassPeriod_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [StudentSectionAttendanceEventClassPeriod_PK] PRIMARY KEY CLUSTERED ([AttendanceEventCategoryDescriptorId] ASC, [ClassPeriodName] ASC, [EventDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_StudentSectionAttendanceEventClassPeriod_ClassPeriod] FOREIGN KEY ([ClassPeriodName], [SchoolId]) REFERENCES [edfi].[ClassPeriod] ([ClassPeriodName], [SchoolId]) ON UPDATE CASCADE,
    CONSTRAINT [FK_StudentSectionAttendanceEventClassPeriod_StudentSectionAttendanceEvent] FOREIGN KEY ([AttendanceEventCategoryDescriptorId], [EventDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) REFERENCES [edfi].[StudentSectionAttendanceEvent] ([AttendanceEventCategoryDescriptorId], [EventDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) ON DELETE CASCADE ON UPDATE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAttendanceEventClassPeriod_ClassPeriod]
    ON [edfi].[StudentSectionAttendanceEventClassPeriod]([ClassPeriodName] ASC, [SchoolId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAttendanceEventClassPeriod_StudentSectionAttendanceEvent]
    ON [edfi].[StudentSectionAttendanceEventClassPeriod]([AttendanceEventCategoryDescriptorId] ASC, [EventDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [StudentUSI] ASC);
GO

