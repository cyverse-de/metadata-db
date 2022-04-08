BEGIN;

SET search_path = public, pg_catalog;

DROP TABLE IF EXISTS attr_enum_values;
DROP INDEX IF EXISTS attr_enum_values_attribute_id;

COMMIT;