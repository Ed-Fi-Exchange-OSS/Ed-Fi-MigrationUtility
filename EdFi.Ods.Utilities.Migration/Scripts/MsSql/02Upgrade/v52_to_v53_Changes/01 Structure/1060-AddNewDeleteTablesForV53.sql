CREATE TABLE [tracked_deletes_edfi].[BarrierToInternetAccessInResidenceDescriptor]
(
       BarrierToInternetAccessInResidenceDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_BarrierToInternetAccessInResidenceDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_edfi].[InternetAccessTypeInResidenceDescriptor]
(
       InternetAccessTypeInResidenceDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_InternetAccessTypeInResidenceDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_edfi].[InternetPerformanceInResidenceDescriptor]
(
       InternetPerformanceInResidenceDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_InternetPerformanceInResidenceDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_edfi].[PrimaryLearningDeviceAccessDescriptor]
(
       PrimaryLearningDeviceAccessDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PrimaryLearningDeviceAccessDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor]
(
       PrimaryLearningDeviceAwayFromSchoolDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PrimaryLearningDeviceAwayFromSchoolDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_edfi].[PrimaryLearningDeviceProviderDescriptor]
(
       PrimaryLearningDeviceProviderDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PrimaryLearningDeviceProviderDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
