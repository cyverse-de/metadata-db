BEGIN;

SET search_path = public, pg_catalog;

--
-- A table of synonyms for metadata attributes.
--
CREATE TABLE IF NOT EXISTS attr_synonyms (
    attribute_id uuid NOT NULL,
    synonym_id uuid NOT NULL,

    CONSTRAINT attr_synonyms_attribute_id_fkey 
        FOREIGN KEY (attribute_id) 
        REFERENCES attributes(id) ON DELETE CASCADE,

    CONSTRAINT attr_synonyms_synonym_id_fkey 
        FOREIGN KEY (synonym_id) 
        REFERENCES attributes(id) ON DELETE CASCADE
);

--
-- Creates an index on the attribute_id column.
--
CREATE INDEX IF NOT EXISTS attr_synonyms_attribute_id ON attr_synonyms(attribute_id);

--
-- Creates an index on the synonym_id column.
--
CREATE INDEX IF NOT EXISTS attr_synonyms_synonym_id ON attr_synonyms(synonym_id);


COMMIT;
