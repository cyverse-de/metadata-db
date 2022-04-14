BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS permanent_id_requests_unique;
DROP TABLE IF EXISTS permanent_id_requests;

COMMIT;
