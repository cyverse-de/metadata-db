BEGIN;

SET search_path = public, pg_catalog;

DROP INDEX IF EXISTS attr_synonyms_attribute_id;
DROP INDEX IF EXISTS attr_synonyms_synonym_id;
DROP TABLE IF EXISTS attr_synonyms;

COMMIT;