-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE FUNCTION tracked_deletes_edfi.BarrierToInternetAccessInResidenceDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.BarrierToInternetAccessInResidenceDescriptor(BarrierToInternetAccessInResidenceDescriptorId, Id, ChangeVersion)
    SELECT OLD.BarrierToInternetAccessInResidenceDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.BarrierToInternetAccessInResidenceDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.BarrierToInternetAccessInResidenceDescriptor
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.BarrierToInternetAccessInResidenceDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.InternetAccessTypeInResidenceDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.InternetAccessTypeInResidenceDescriptor(InternetAccessTypeInResidenceDescriptorId, Id, ChangeVersion)
    SELECT OLD.InternetAccessTypeInResidenceDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.InternetAccessTypeInResidenceDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.InternetAccessTypeInResidenceDescriptor
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.InternetAccessTypeInResidenceDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.InternetPerformanceInResidenceDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.InternetPerformanceInResidenceDescriptor(InternetPerformanceInResidenceDescriptorId, Id, ChangeVersion)
    SELECT OLD.InternetPerformanceInResidenceDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.InternetPerformanceInResidenceDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.InternetPerformanceInResidenceDescriptor
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.InternetPerformanceInResidenceDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.PrimaryLearningDeviceAccessDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.PrimaryLearningDeviceAccessDescriptor(PrimaryLearningDeviceAccessDescriptorId, Id, ChangeVersion)
    SELECT OLD.PrimaryLearningDeviceAccessDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PrimaryLearningDeviceAccessDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.PrimaryLearningDeviceAccessDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.PrimaryLearningDeviceAccessDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.PrimaryLearningDeviceAwayFromSchoolDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.PrimaryLearningDeviceAwayFromSchoolDescriptor(PrimaryLearningDeviceAwayFromSchoolDescriptorId, Id, ChangeVersion)
    SELECT OLD.PrimaryLearningDeviceAwayFromSchoolDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PrimaryLearningDeviceAwayFromSchoolDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.PrimaryLearningDeviceAwayFromSchoolDescriptor
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.PrimaryLearningDeviceAwayFromSchoolDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.PrimaryLearningDeviceProviderDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.PrimaryLearningDeviceProviderDescriptor(PrimaryLearningDeviceProviderDescriptorId, Id, ChangeVersion)
    SELECT OLD.PrimaryLearningDeviceProviderDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PrimaryLearningDeviceProviderDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.PrimaryLearningDeviceProviderDescriptor
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.PrimaryLearningDeviceProviderDescriptor_TR_DelTrkg();
