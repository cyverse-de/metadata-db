BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS permanent_id_request_types_unique;
DROP TABLE IF EXISTS permanent_id_request_types;

COMMIT;
