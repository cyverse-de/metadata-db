BEGIN;

SET search_path = public, pg_catalog;

--
-- ontology_hierarchies table
--
CREATE TABLE IF NOT EXISTS ontology_hierarchies (
  ontology_version VARCHAR NOT NULL,
  class_iri VARCHAR NOT NULL,
  subclass_iri VARCHAR NOT NULL,

  CONSTRAINT ontology_hierarchies_version_fkey
    FOREIGN KEY (ontology_version)
    REFERENCES ontologies(version)
    ON DELETE CASCADE,

  CONSTRAINT ontology_hierarchies_class_iri_fkey
    FOREIGN KEY (ontology_version, class_iri)
    REFERENCES ontology_classes(ontology_version, iri)
    ON DELETE CASCADE,

  CONSTRAINT ontology_hierarchies_subclass_iri_fkey
    FOREIGN KEY (ontology_version, subclass_iri)
    REFERENCES ontology_classes(ontology_version, iri)
    ON DELETE CASCADE,

  PRIMARY KEY (ontology_version, class_iri, subclass_iri)
);

COMMIT;