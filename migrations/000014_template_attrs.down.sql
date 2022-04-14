BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS template_attrs_attribute_id;
DROP INDEX IF EXISTS template_attrs_template_id;
DROP TABLE IF EXISTS template_attrs;

COMMIT;
