BEGIN;

SET search_path = public, pg_catalog;

--
-- ontology_classes table
--
CREATE TABLE IF NOT EXISTS ontology_classes (
  ontology_version VARCHAR NOT NULL,
  iri VARCHAR NOT NULL,
  label VARCHAR,
  description TEXT,

  CONSTRAINT ontology_classes_version_fkey
    FOREIGN KEY (ontology_version)
    REFERENCES ontologies(version)
    ON DELETE CASCADE,
    
  PRIMARY KEY (ontology_version, iri)
);

COMMIT;
