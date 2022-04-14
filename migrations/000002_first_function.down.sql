BEGIN;

SET search_path = public, pg_catalog;

DROP AGGREGATE IF EXISTS public.first ( anyelement );

DROP FUNCTION IF EXISTS public.first_agg ( anyelement, anyelement );

COMMIT;
