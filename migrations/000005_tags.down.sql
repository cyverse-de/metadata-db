BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS tags_owner_id_idx;
DROP TABLE IF EXISTS tags;

COMMIT;