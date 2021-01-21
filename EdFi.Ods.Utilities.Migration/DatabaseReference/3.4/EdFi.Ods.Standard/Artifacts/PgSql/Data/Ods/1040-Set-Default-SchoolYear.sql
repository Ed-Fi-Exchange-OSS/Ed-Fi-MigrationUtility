DO $$
DECLARE
    currentYear integer;
    currentMonth integer;

BEGIN
    currentYear = date_part('year', current_date);
    currentMonth = date_part('month', current_date);

    IF currentMonth > 6 THEN
        currentYear = currentYear + 1;
    END IF;

    PERFORM edfi.SetCurrentSchoolYear(currentYear);
END $$;
