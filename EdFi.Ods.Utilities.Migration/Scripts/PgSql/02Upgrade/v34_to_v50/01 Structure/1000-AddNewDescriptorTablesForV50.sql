-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Table edfi.IndicatorDescriptor --
CREATE TABLE edfi.IndicatorDescriptor (
    IndicatorDescriptorId INT NOT NULL,
    CONSTRAINT IndicatorDescriptor_PK PRIMARY KEY (IndicatorDescriptorId),
    CONSTRAINT fk_ee0bbf_descriptor FOREIGN KEY (IndicatorDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);

-- Table edfi.IndicatorGroupDescriptor --
CREATE TABLE edfi.IndicatorGroupDescriptor (
    IndicatorGroupDescriptorId INT NOT NULL,
    CONSTRAINT IndicatorGroupDescriptor_PK PRIMARY KEY (IndicatorGroupDescriptorId),
    CONSTRAINT fk_e0f6fe_descriptor FOREIGN KEY (IndicatorGroupDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.IndicatorLevelDescriptor --
CREATE TABLE edfi.IndicatorLevelDescriptor (
    IndicatorLevelDescriptorId INT NOT NULL,
    CONSTRAINT IndicatorLevelDescriptor_PK PRIMARY KEY (IndicatorLevelDescriptorId),
    CONSTRAINT fk_05d3f9_descriptor FOREIGN KEY (IndicatorLevelDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.QuestionFormDescriptor --
CREATE TABLE edfi.QuestionFormDescriptor (
    QuestionFormDescriptorId INT NOT NULL,
    CONSTRAINT QuestionFormDescriptor_PK PRIMARY KEY (QuestionFormDescriptorId),
    CONSTRAINT fk_43a820_descriptor FOREIGN KEY (QuestionFormDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.SourceSystemDescriptor --
CREATE TABLE edfi.SourceSystemDescriptor (
    SourceSystemDescriptorId INT NOT NULL,
    CONSTRAINT SourceSystemDescriptor_PK PRIMARY KEY (SourceSystemDescriptorId),
    CONSTRAINT fk_f71783_descriptor FOREIGN KEY (SourceSystemDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.SurveyCategoryDescriptor --
CREATE TABLE edfi.SurveyCategoryDescriptor (
    SurveyCategoryDescriptorId INT NOT NULL,
    CONSTRAINT SurveyCategoryDescriptor_PK PRIMARY KEY (SurveyCategoryDescriptorId),
    CONSTRAINT fk_4e55bd_descriptor FOREIGN KEY (SurveyCategoryDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);


-- Table edfi.SurveyLevelDescriptor --
CREATE TABLE edfi.SurveyLevelDescriptor (
    SurveyLevelDescriptorId INT NOT NULL,
    CONSTRAINT SurveyLevelDescriptor_PK PRIMARY KEY (SurveyLevelDescriptorId),
    CONSTRAINT fk_bce725_descriptor FOREIGN KEY (SurveyLevelDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);
