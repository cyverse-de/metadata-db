BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS file_links_target_id_idx;
DROP TABLE IF EXISTS file_links;

COMMIT;
