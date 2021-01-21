DROP VIEW IF EXISTS interop.OperationalContextSupport;

CREATE VIEW interop.OperationalContextSupport
AS
SELECT  (sd.Namespace || '#' || sd.CodeValue) AS SourceDescriptorUri, 
        tocd.OperationalContextUri AS TargetOperationalContextUri, 
        (td.Namespace || '#' || td.CodeValue) AS TargetDescriptorUri,
        0 AS IsGeneralized
FROM    edfi.Descriptor sd 
        INNER JOIN interop.DescriptorEquivalenceGroupAssignment sdega 
           ON sd.DescriptorId = sdega.DescriptorId
        INNER JOIN interop.DescriptorEquivalenceGroup deg 
           ON sdega.DescriptorEquivalenceGroupId = deg.DescriptorEquivalenceGroupId
        INNER JOIN interop.DescriptorEquivalenceGroupAssignment tdega 
           ON deg.DescriptorEquivalenceGroupId = tdega.DescriptorEquivalenceGroupId
        INNER JOIN edfi.Descriptor td 
           ON tdega.DescriptorId = td.DescriptorId
        INNER JOIN interop.OperationalContextDescriptorUsage tocd 
           ON td.DescriptorId = tocd.DescriptorId

UNION
SELECT  (sd.Namespace || '#' || sd.CodeValue) AS SourceDescriptorUri, 
        tocd.OperationalContextUri AS TargetOperationalContextUri, 
        (td.Namespace || '#' || td.CodeValue) AS TargetDescriptorUri,
        1 AS IsGeneralized
FROM    edfi.Descriptor sd 
        INNER JOIN interop.DescriptorEquivalenceGroupAssignment sdega 
            ON sd.DescriptorId = sdega.DescriptorId
        INNER JOIN interop.DescriptorEquivalenceGroup sdeg 
            ON sdega.DescriptorEquivalenceGroupId = sdeg.DescriptorEquivalenceGroupId
        INNER JOIN interop.DescriptorEquivalenceGroupGeneralization degg 
            ON sdeg.DescriptorEquivalenceGroupId = degg.DescriptorEquivalenceGroupId
        INNER JOIN interop.DescriptorEquivalenceGroup tdeg 
            ON degg.GeneralizationDescriptorEquivalenceGroupId = tdeg.DescriptorEquivalenceGroupId
        INNER JOIN interop.DescriptorEquivalenceGroupAssignment tdega 
            ON tdeg.DescriptorEquivalenceGroupId = tdega.DescriptorEquivalenceGroupId
        INNER JOIN edfi.Descriptor td 
            ON tdega.DescriptorId = td.DescriptorId
        INNER JOIN interop.OperationalContextDescriptorUsage tocd 
            ON td.DescriptorId = tocd.DescriptorId			
UNION
SELECT  (sd.Namespace || '#' || sd.CodeValue) AS SourceDescriptorUri,
        tocd.OperationalContextUri AS TargetOperationalContextUri,
        (sd.Namespace || '#' || sd.CodeValue) AS TargetDescriptorUri,
        0 AS IsGeneralized
FROM    edfi.Descriptor sd       
        INNER JOIN interop.OperationalContextDescriptorUsage tocd
           ON sd.DescriptorId = tocd.DescriptorId;