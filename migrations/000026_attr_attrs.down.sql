BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS attr_attrs_parent_id;
DROP INDEX IF EXISTS attr_attrs_child_id;
DROP TABLE IF EXISTS attr_attrs;

COMMIT;
