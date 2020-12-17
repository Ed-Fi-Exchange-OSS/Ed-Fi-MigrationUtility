-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

DO language plpgsql $$
DECLARE

BEGIN

    IF NOT EXISTS(
        SELECT schema_name
          FROM information_schema.schemata
          WHERE schema_name = 'migration_tempdata'
      )
    THEN
      CREATE SCHEMA migration_tempdata AUTHORIZATION postgres;
    END IF;
	
END $$;

CREATE OR REPLACE FUNCTION migration_tempdata.fn_sql_drop_all()
RETURNS VARCHAR
language plpgsql
AS
$$
DECLARE
DropMigrationTempdataObjectsSql VARCHAR;
NewLine VARCHAR := chr (13) || chr (10);

BEGIN
	-- Procedures
	IF (SELECT COUNT(*)
		FROM   pg_catalog.pg_proc p
		JOIN   pg_catalog.pg_namespace n ON n.oid = p.pronamespace 
		WHERE  n.nspname = 'migration_tempdata' and p.prokind = 'p') > 0 
	THEN
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('DROP PROCEDURE migration_tempdata.' || p.proname || ';','') INTO DropMigrationTempdataObjectsSql
		FROM   pg_catalog.pg_proc p
		JOIN   pg_catalog.pg_namespace n ON n.oid = p.pronamespace 
		WHERE  n.nspname = 'migration_tempdata' and p.prokind = 'p';
	END IF;
	
	-- Check constraints
	IF (SELECT COUNT(*)
 		FROM pg_constraint 
 		INNER JOIN pg_class ON conrelid=pg_class.oid 
 		INNER JOIN pg_namespace ON pg_namespace.oid=pg_class.relnamespace 
 		WHERE pg_namespace.nspname = 'migration_tempdata' AND contype = 'c') > 0
	THEN	
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('ALTER TABLE '||nspname||'.'||relname||' DROP CONSTRAINT '||conname|| ';','') INTO DropMigrationTempdataObjectsSql
 		FROM pg_constraint 
 		INNER JOIN pg_class ON conrelid=pg_class.oid 
 		INNER JOIN pg_namespace ON pg_namespace.oid=pg_class.relnamespace 
 		WHERE pg_namespace.nspname = 'migration_tempdata' AND contype = 'c';
	END IF;
	
	-- Functions
	IF (SELECT COUNT(*)
		FROM   pg_catalog.pg_proc p
		JOIN   pg_catalog.pg_namespace n ON n.oid = p.pronamespace 
		WHERE  n.nspname = 'migration_tempdata' and p.prokind = 'f') > 0
	THEN
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('DROP FUNCTION migration_tempdata.' || p.proname || ';','') INTO DropMigrationTempdataObjectsSql
		FROM   pg_catalog.pg_proc p
		JOIN   pg_catalog.pg_namespace n ON n.oid = p.pronamespace 
		WHERE  n.nspname = 'migration_tempdata' and p.prokind = 'f';
	END IF;
	
	-- Views
	IF (SELECT COUNT(*) 
		FROM pg_catalog.pg_views
    	WHERE schemaname = 'migration_tempdata') > 0
	THEN	
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('DROP VIEW migration_tempdata.' || viewname || ';','') INTO DropMigrationTempdataObjectsSql 
		FROM pg_catalog.pg_views
    	WHERE schemaname = 'migration_tempdata';
	END IF;

    --Foreign keys
	IF (SELECT COUNT(*)
 		FROM pg_constraint 
 		INNER JOIN pg_class ON conrelid=pg_class.oid 
 		INNER JOIN pg_namespace ON pg_namespace.oid=pg_class.relnamespace 
 		WHERE pg_namespace.nspname = 'migration_tempdata' AND contype = 'f') > 0
	THEN
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('ALTER TABLE '||nspname||'.'||relname||' DROP CONSTRAINT '||conname|| ';','') INTO DropMigrationTempdataObjectsSql
 		FROM pg_constraint 
 		INNER JOIN pg_class ON conrelid=pg_class.oid 
 		INNER JOIN pg_namespace ON pg_namespace.oid=pg_class.relnamespace 
 		WHERE pg_namespace.nspname = 'migration_tempdata' AND contype = 'f';
	END IF;
	
	--Data
	IF (SELECT COUNT(*)
		FROM information_schema.tables
		WHERE table_schema = 'migration_tempdata') > 0
	THEN	
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('TRUNCATE TABLE migration_tempdata.' || table_name || ';','') INTO DropMigrationTempdataObjectsSql
		FROM information_schema.tables
		WHERE table_schema = 'migration_tempdata';
	END IF;
	
	--Tables
	IF (SELECT COUNT(*)
		FROM information_schema.tables
		WHERE table_schema = 'migration_tempdata') > 0
	THEN	
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('DROP TABLE migration_tempdata.' || table_name || ';','') INTO DropMigrationTempdataObjectsSql
		FROM information_schema.tables
		WHERE table_schema = 'migration_tempdata';
	END IF;
	
	--Domains	
	IF (SELECT COUNT(*)
		FROM  pg_catalog.pg_type t 
		LEFT JOIN   pg_catalog.pg_namespace n ON n.oid = t.typnamespace 
		WHERE (t.typrelid = 0 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)) 
		AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
		AND n.nspname  = 'migration_tempdata' AND t.typtype = 'd') > 0
	THEN
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_AGG('DROP DOMAIN ' || typname || ';','') INTO DropMigrationTempdataObjectsSql
		FROM  pg_catalog.pg_type t 
		LEFT JOIN   pg_catalog.pg_namespace n ON n.oid = t.typnamespace 
		WHERE (t.typrelid = 0 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)) 
		AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
		AND n.nspname  = 'migration_tempdata' AND t.typtype = 'd';
	END IF;
	
	--Composite Types/Enums
	IF (SELECT COUNT(*)
		FROM  pg_catalog.pg_type t 
		LEFT JOIN   pg_catalog.pg_namespace n ON n.oid = t.typnamespace 
		WHERE (t.typrelid = 0 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)) 
		AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
		AND n.nspname  = 'migration_tempdata' AND t.typtype IN ('c','e')) > 0
	THEN	
		SELECT COALESCE (DropMigrationTempdataObjectsSql, '') || STRING_ADD('DROP TYPE ' || typname || ';','') INTO DropMigrationTempdataObjectsSql
		FROM  pg_catalog.pg_type t 
		LEFT JOIN   pg_catalog.pg_namespace n ON n.oid = t.typnamespace 
		WHERE (t.typrelid = 0 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)) 
		AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
		AND n.nspname  = 'migration_tempdata' AND t.typtype IN ('c','e');
	END IF;
	
	RETURN DropMigrationTempdataObjectsSql;
END $$;

CREATE OR REPLACE PROCEDURE migration_tempdata.sp_DropForeignKeys
(
	SchemaName VARCHAR(128)
)
LANGUAGE plpgsql
as $$
DECLARE
	ConstraintName VARCHAR(128);
	DropConstraintSQL VARCHAR;
	ForeignKeyTable VARCHAR(100);
	ForeignKeyCursor CURSOR FOR SELECT kcu.table_schema || '.' ||kcu.table_name AS foreign_table,
										kcu.constraint_name
								FROM information_schema.table_constraints tco
								JOIN information_schema.key_column_usage kcu
									ON tco.constraint_schema = kcu.constraint_schema
									AND tco.constraint_name = kcu.constraint_name
								JOIN information_schema.referential_constraints rco
									ON tco.constraint_schema = rco.constraint_schema
									AND tco.constraint_name = rco.constraint_name
								JOIN information_schema.table_constraints rel_tco
									ON rco.unique_constraint_schema = rel_tco.constraint_schema
									AND rco.unique_constraint_name = rel_tco.constraint_name
								WHERE tco.constraint_type = 'FOREIGN KEY' AND kcu.table_schema = SchemaName
								GROUP BY kcu.table_schema,
										kcu.table_name,
										rel_tco.table_name,
										rel_tco.table_schema,
										kcu.constraint_name
								ORDER BY kcu.table_schema, kcu.table_name;
	
BEGIN
	OPEN ForeignKeyCursor;
	LOOP	
		FETCH FROM ForeignKeyCursor INTO ForeignKeyTable, ConstraintName;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Dropping foreign key % on %', ConstraintName, ForeignKeyTable;
		DropConstraintSQL := 'ALTER TABLE ' || ForeignKeyTable || ' DROP CONSTRAINT ' || ConstraintName || ';';
		EXECUTE DropConstraintSQL;
	END LOOP;
	
	CLOSE ForeignKeyCursor;
END $$;
--DROP PROCEDURE migration_tempdata.sp_DropPrimaryKeys;
CREATE OR REPLACE PROCEDURE migration_tempdata.sp_DropPrimaryKeys
(
	SchemaName VARCHAR(128)
)
LANGUAGE plpgsql
as $$
DECLARE
	ConstraintName VARCHAR(128);
	DropConstraintSQL VARCHAR;
	PrimayKeyTable VARCHAR(100);
	PrimaryKeyCursor CURSOR FOR SELECT kcu.table_schema || '.' || kcu.table_name AS table,
       									tco.constraint_name, kcu.ordinal_position AS position
								FROM information_schema.table_constraints tco
								JOIN information_schema.key_column_usage kcu 
     								ON kcu.constraint_name = tco.constraint_name
     								AND kcu.constraint_schema = tco.constraint_schema
     								AND kcu.constraint_name = tco.constraint_name
								WHERE tco.constraint_type = 'PRIMARY KEY' AND kcu.table_schema = SchemaName
								ORDER BY kcu.table_schema, kcu.table_name, position;
	
BEGIN
	OPEN PrimaryKeyCursor;
	LOOP	
		FETCH FROM PrimaryKeyCursor INTO PrimayKeyTable, ConstraintName;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Dropping primary key % on %', ConstraintName, PrimayKeyTable;
		DropConstraintSQL := 'ALTER TABLE ' || PrimayKeyTable || ' DROP CONSTRAINT ' || ConstraintName || ';';
		EXECUTE DropConstraintSQL;
	END LOOP;
	
	CLOSE PrimaryKeyCursor;
END $$;

CREATE OR REPLACE PROCEDURE migration_tempdata.sp_DropUniqueConstraints
(
	SchemaName VARCHAR(128)
)
LANGUAGE plpgsql
as $$
DECLARE
	ConstraintName VARCHAR(128);
	DropConstraintSQL VARCHAR;
	UniqueConstraintTable VARCHAR(100);
	UniqueConstraintCursor CURSOR FOR SELECT table_schema || '.' || table_name as table, constraint_name 
									  FROM information_schema.table_constraints 
									  WHERE table_schema = SchemaName AND CONSTRAINT_TYPE = 'UNIQUE';
BEGIN
	OPEN UniqueConstraintCursor;
	LOOP	
		FETCH FROM UniqueConstraintCursor INTO UniqueConstraintTable, ConstraintName;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Dropping unique constraint % on %', ConstraintName, UniqueConstraintTable;
		DropConstraintSQL := 'ALTER TABLE ' || UniqueConstraintTable || ' DROP CONSTRAINT ' || ConstraintName || ';';
		EXECUTE DropConstraintSQL;
	END LOOP;
	
	CLOSE UniqueConstraintCursor;
END $$;

CREATE OR REPLACE PROCEDURE migration_tempdata.sp_DropIndexes
(
	Schema_Name VARCHAR(128)
)
LANGUAGE plpgsql
as $$
DECLARE
	IndName VARCHAR(128);
	DropIndexSQL VARCHAR;
	IndexTable VARCHAR(100);
	IndexCursor CURSOR FOR SELECT tablename, indexname
						   FROM pg_indexes 
						   WHERE schemaname = Schema_Name;
BEGIN
	OPEN IndexCursor;
	LOOP	
		FETCH FROM IndexCursor INTO IndexTable, IndName;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Dropping index % on %.%', IndName, Schema_Name, IndexTable;
		DropIndexSQL := 'DROP INDEX ' || Schema_Name || '.' || IndName || ';';
		EXECUTE DropIndexSQL;
	END LOOP;
	
	CLOSE IndexCursor;
END $$;

CREATE OR REPLACE PROCEDURE migration_tempdata.sp_DropDefaultConstraints
(
	Schema_Name VARCHAR(128)
)
LANGUAGE plpgsql
as $$
DECLARE
	DefaultConstraintColumnName VARCHAR(128);
	DropDefaultConstraintSQL VARCHAR;
	DefaultConstraintTable VARCHAR(100);
	DefaultConstraintCursor CURSOR FOR SELECT col.table_name,
       										  col.column_name,
       										  col.column_default
									   FROM information_schema.columns col
									   WHERE col.column_default IS NOT null
      									 AND col.table_schema = Schema_Name;
BEGIN
	OPEN DefaultConstraintCursor;
	LOOP	
		FETCH FROM DefaultConstraintCursor INTO DefaultConstraintTable, DefaultConstraintColumnName;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Dropping default constraint on column % on %.%', DefaultConstraintColumnName, Schema_Name, DefaultConstraintTable;
		DropDefaultConstraintSQL := 'ALTER TABLE ' || Schema_Name || '.' || DefaultConstraintTable || ' ALTER column ' || DefaultConstraintColumnName || ' DROP DEFAULT' || ';';
		EXECUTE DropDefaultConstraintSQL;
	END LOOP;
	
	CLOSE DefaultConstraintCursor;
END $$;
