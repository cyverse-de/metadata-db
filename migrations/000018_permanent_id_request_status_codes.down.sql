BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS permanent_id_request_status_codes_name_unique;
DROP TABLE IF EXISTS permanent_id_request_status_codes;

COMMIT;
