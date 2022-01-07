CREATE TRIGGER [edfi].[edfi_BarrierToInternetAccessInResidenceDescriptor_TR_DeleteTracking] ON [edfi].[BarrierToInternetAccessInResidenceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[BarrierToInternetAccessInResidenceDescriptor](BarrierToInternetAccessInResidenceDescriptorId, Id, ChangeVersion)
    SELECT  d.BarrierToInternetAccessInResidenceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BarrierToInternetAccessInResidenceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfi].[BarrierToInternetAccessInResidenceDescriptor] ENABLE TRIGGER [edfi_BarrierToInternetAccessInResidenceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [edfi].[edfi_InternetAccessTypeInResidenceDescriptor_TR_DeleteTracking] ON [edfi].[InternetAccessTypeInResidenceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[InternetAccessTypeInResidenceDescriptor](InternetAccessTypeInResidenceDescriptorId, Id, ChangeVersion)
    SELECT  d.InternetAccessTypeInResidenceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.InternetAccessTypeInResidenceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfi].[InternetAccessTypeInResidenceDescriptor] ENABLE TRIGGER [edfi_InternetAccessTypeInResidenceDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [edfi].[edfi_InternetPerformanceInResidenceDescriptor_TR_DeleteTracking] ON [edfi].[InternetPerformanceInResidenceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[InternetPerformanceInResidenceDescriptor](InternetPerformanceInResidenceDescriptorId, Id, ChangeVersion)
    SELECT  d.InternetPerformanceInResidenceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.InternetPerformanceInResidenceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfi].[InternetPerformanceInResidenceDescriptor] ENABLE TRIGGER [edfi_InternetPerformanceInResidenceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [edfi].[edfi_PrimaryLearningDeviceAccessDescriptor_TR_DeleteTracking] ON [edfi].[PrimaryLearningDeviceAccessDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[PrimaryLearningDeviceAccessDescriptor](PrimaryLearningDeviceAccessDescriptorId, Id, ChangeVersion)
    SELECT  d.PrimaryLearningDeviceAccessDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PrimaryLearningDeviceAccessDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfi].[PrimaryLearningDeviceAccessDescriptor] ENABLE TRIGGER [edfi_PrimaryLearningDeviceAccessDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [edfi].[edfi_PrimaryLearningDeviceAwayFromSchoolDescriptor_TR_DeleteTracking] ON [edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor](PrimaryLearningDeviceAwayFromSchoolDescriptorId, Id, ChangeVersion)
    SELECT  d.PrimaryLearningDeviceAwayFromSchoolDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PrimaryLearningDeviceAwayFromSchoolDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor] ENABLE TRIGGER [edfi_PrimaryLearningDeviceAwayFromSchoolDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [edfi].[edfi_PrimaryLearningDeviceProviderDescriptor_TR_DeleteTracking] ON [edfi].[PrimaryLearningDeviceProviderDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[PrimaryLearningDeviceProviderDescriptor](PrimaryLearningDeviceProviderDescriptorId, Id, ChangeVersion)
    SELECT  d.PrimaryLearningDeviceProviderDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PrimaryLearningDeviceProviderDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfi].[PrimaryLearningDeviceProviderDescriptor] ENABLE TRIGGER [edfi_PrimaryLearningDeviceProviderDescriptor_TR_DeleteTracking]
GO