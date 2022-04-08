BEGIN;

SET search_path = public, pg_catalog;

DROP AGGREGATE IF EXISTS public.last (
        sfunc    = public.last_agg,
        basetype = anyelement,
        stype    = anyelement
);

DROP FUNCTION IF EXISTS public.last_agg ( anyelement, anyelement );

COMMIT;