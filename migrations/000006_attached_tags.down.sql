BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS attached_tags_target_id_idx;
DROP INDEX IF EXISTS attached_tags_tag_id_idx;
DROP TABLE IF EXISTS attached_tags;

COMMIT;
