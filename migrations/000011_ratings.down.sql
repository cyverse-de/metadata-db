BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS ratings_owner_id_idx;
DROP INDEX IF EXISTS ratings_target_id_idx;
DROP TABLE IF EXISTS ratings;

COMMIT;