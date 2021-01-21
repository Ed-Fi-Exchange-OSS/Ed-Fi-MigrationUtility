CREATE OR REPLACE FUNCTION changes.GetMaxChangeVersion() RETURNS bigint AS
$$
DECLARE
	result bigint;
BEGIN
    SELECT last_value FROM changes.ChangeVersionSequence INTO result;
    RETURN result;
END
$$ language plpgsql;
