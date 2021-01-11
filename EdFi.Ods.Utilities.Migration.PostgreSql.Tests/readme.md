# Configuration Settings

The below configuration option is used to check if the current integration test copy of Ed-Fi-ODS build scripts are up to date with the current development scripts (relative solution path external to this project as of 11/15/2019).

The directory path below can be left empty during active development when script sets are intended to differ temporarily.

Enable for the purposes of receiving a build notification when the latest version scripts are out of date.
- __CurrentEdFiOdsScriptDirectory__

Optional override for development use. Latest supported upgrade version will used by default.
- __LatestEdFiOdsUpgradeVersion__

Optional: comma separated list.  (e.g. "3.0, 3.1").
Default: empty.
Disable final verification of final schema structure (tables, keys, etc) while an upgrade is under development for these versions
- __DisablePostUpgradeSchemaTestForVersionsUnderDevelopment__

FromVersion/ToVersion are optional.
Can be used to run a shorter build with specific tests to targeting these versions.
Comma separated list supported (e.g. "2.5, 3.0").
Default: empty/full test run for all versions
- __FromVersion__
- __ToVersion__

This is a key value collection based on the EdFiOdsVersion display name, with the value being a direct link to a nuget package containing the relevant Grand Bend
backup for the version.
- __GrandBendBackupPathsByDisplayName__

Optional:  Will be used to execute Glendale integration tests.
This should be a backup created on or after 2018-06-13, which was updated for 3.0 compatibility.
 Default: empty (Glendale test disabled)
- __GlendaleBackupPath__

Initial default timeout for chosen based on pre-release (October 2018) upgrade of V2.0 Glendale ODS.
The optional V2.0 => V3.1 fixture was tested successfully with the following configuration:
- Integration test timeout set to 180 seconds
- Core i7-7700 @ 2.8GHz x8, 32GB Ram

The V2 Glendale sample set contained about 50,000 students, with the largest affected table (StudentAssessmentItem) containing 5 million records at the time.

If enabling the optional Glendale integration test on a build server with limited resources in the future, the timeout should be significantly increased. 
For reference, the v2.0 Ed-Fi ETL currently uses a query timeout of 1200 seconds for Glendale ODS and is designed for compatibility for various configurations on the field. 
Extreme example: The bare minimum possible resource configuration tested on Azure for migration of V2 Glendale ODS was Standard S0, 10 DTUs.  Under this configuration, it took around 90 minutes to create the new V3.1 primary key on the StudentAssessmentItem table.
- __SqlCommandTimeout__