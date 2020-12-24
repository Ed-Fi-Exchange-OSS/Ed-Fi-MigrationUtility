-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Table edfi.IndicatorDescriptor --
CREATE TABLE edfi.IndicatorDescriptor (
    IndicatorDescriptorId INT NOT NULL,
    CONSTRAINT IndicatorDescriptor_PK PRIMARY KEY (IndicatorDescriptorId),
    CONSTRAINT FK_IndicatorDescriptor_Descriptor FOREIGN KEY (IndicatorDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);

-- Table edfi.IndicatorGroupDescriptor --
CREATE TABLE edfi.IndicatorGroupDescriptor (
    IndicatorGroupDescriptorId INT NOT NULL,
    CONSTRAINT IndicatorGroupDescriptor_PK PRIMARY KEY (IndicatorGroupDescriptorId),
    CONSTRAINT FK_IndicatorGroupDescriptor_Descriptor FOREIGN KEY (IndicatorGroupDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.IndicatorLevelDescriptor --
CREATE TABLE edfi.IndicatorLevelDescriptor (
    IndicatorLevelDescriptorId INT NOT NULL,
    CONSTRAINT IndicatorLevelDescriptor_PK PRIMARY KEY (IndicatorLevelDescriptorId),
    CONSTRAINT FK_IndicatorLevelDescriptor_Descriptor FOREIGN KEY (IndicatorLevelDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.QuestionFormDescriptor --
CREATE TABLE edfi.QuestionFormDescriptor (
    QuestionFormDescriptorId INT NOT NULL,
    CONSTRAINT QuestionFormDescriptor_PK PRIMARY KEY (QuestionFormDescriptorId),
    CONSTRAINT FK_QuestionFormDescriptor_Descriptor FOREIGN KEY (QuestionFormDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.SourceSystemDescriptor --
CREATE TABLE edfi.SourceSystemDescriptor (
    SourceSystemDescriptorId INT NOT NULL,
    CONSTRAINT SourceSystemDescriptor_PK PRIMARY KEY (SourceSystemDescriptorId),
    CONSTRAINT FK_SourceSystemDescriptor_Descriptor FOREIGN KEY (SourceSystemDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.SurveyCategoryDescriptor --
CREATE TABLE edfi.SurveyCategoryDescriptor (
    SurveyCategoryDescriptorId INT NOT NULL,
    CONSTRAINT SurveyCategoryDescriptor_PK PRIMARY KEY (SurveyCategoryDescriptorId),
    CONSTRAINT FK_SurveyCategoryDescriptor_Descriptor FOREIGN KEY (SurveyCategoryDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.SurveyLevelDescriptor --
CREATE TABLE edfi.SurveyLevelDescriptor (
    SurveyLevelDescriptorId INT NOT NULL,
    CONSTRAINT SurveyLevelDescriptor_PK PRIMARY KEY (SurveyLevelDescriptorId),
    CONSTRAINT FK_SurveyLevelDescriptor_Descriptor FOREIGN KEY (SurveyLevelDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);
