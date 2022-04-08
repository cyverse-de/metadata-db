BEGIN;

SET search_path = public, pg_catalog;

DROP AGGREGATE IF EXISTS public.first (
        sfunc    = public.first_agg,
        basetype = anyelement,
        stype    = anyelement
);

DROP FUNCTION IF EXISTS public.first_agg ( anyelement, anyelement );

COMMIT;