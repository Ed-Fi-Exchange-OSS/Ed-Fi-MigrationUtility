BEGIN;

INSERT INTO interop.OperationalContext (
	OperationalContextUri
	,DisplayName
	,OrganizationName
	)
VALUES (
	'uri://ed-fi-api-host.org'
	,'Default'
	,'Ed-Fi'
	);

COMMIT;
