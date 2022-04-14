BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS comments_target_id_idx;
DROP TABLE IF EXISTS comments;

COMMIT;
