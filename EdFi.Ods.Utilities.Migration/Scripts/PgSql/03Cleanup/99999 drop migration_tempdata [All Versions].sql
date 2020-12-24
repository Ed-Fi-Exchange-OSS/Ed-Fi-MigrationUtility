-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

DO language plpgsql $$
DECLARE
DropMigrationTempdataObjectsSql VARCHAR;
BEGIN
/*
The [migration_tempdata] contains a
[Version] table that is used to inform the upgrade 
utility what version upgrade is currently
in progress.

These final drop operations should run last
*/

RAISE NOTICE '%', 'Dropping global temporary data used during migration';

IF EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'migration_tempdata') THEN
	BEGIN
		CALL migration_tempdata.sp_DropForeignKeys('migration_tempdata');
	END;
END IF;


IF EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'migration_tempdata') THEN
BEGIN
	CALL migration_tempdata.sp_DropPrimaryKeys('migration_tempdata');
END;
END IF;

IF EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'migration_tempdata') THEN
BEGIN
	CALL migration_tempdata.sp_DropUniqueConstraints('migration_tempdata');
END;
END IF;

IF EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'migration_tempdata') THEN
BEGIN
	CALL migration_tempdata.sp_DropDefaultConstraints('migration_tempdata');
END;
END IF;

IF EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'migration_tempdata') THEN
BEGIN
	CALL migration_tempdata.sp_DropIndexes('migration_tempdata');
END;
END IF;

IF EXISTS (SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'migration_tempdata') THEN
BEGIN
	SELECT INTO DropMigrationTempdataObjectsSql migration_tempdata.fn_sql_drop_all();
	EXECUTE DropMigrationTempdataObjectsSql;
	DROP SCHEMA migration_tempdata;
END;
END IF;

END $$;





