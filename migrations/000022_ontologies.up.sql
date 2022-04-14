BEGIN;

SET search_path = public, pg_catalog;

--
-- ontologies table
--
CREATE TABLE IF NOT EXISTS ontologies (
  version VARCHAR NOT NULL,
  iri VARCHAR,
  deleted BOOLEAN NOT NULL DEFAULT FALSE,
  created_by VARCHAR(512) NOT NULL,
  created_on TIMESTAMP DEFAULT now() NOT NULL,
  xml TEXT NOT NULL,

  PRIMARY KEY (version)
);

COMMIT;
