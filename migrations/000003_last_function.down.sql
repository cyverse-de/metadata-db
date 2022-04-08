BEGIN;

SET search_path = public, pg_catalog;

DROP AGGREGATE IF EXISTS public.last ( anyelement );

DROP FUNCTION IF EXISTS public.last_agg ( anyelement, anyelement );

COMMIT;
