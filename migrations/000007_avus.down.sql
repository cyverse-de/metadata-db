BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS avus_target_id_idx;
DROP INDEX IF EXISTS avus_avu_idx;
DROP TABLE IF EXISTS avus;

COMMIT;