BEGIN;

SET search_path = public, pg_catalog;

--
-- avus table
--
CREATE TABLE IF NOT EXISTS avus (
  id UUID NOT NULL DEFAULT uuid_generate_v1(),
  attribute TEXT,
  value TEXT,
  unit TEXT,
  target_id UUID NOT NULL,
  target_type target_enum NOT NULL,
  created_by varchar(512) NOT NULL,
  modified_by varchar(512) NOT NULL,
  created_on timestamp DEFAULT now() NOT NULL,
  modified_on timestamp DEFAULT now() NOT NULL,

  CONSTRAINT avus_unique UNIQUE (target_id, target_type, attribute, value_unit),
  PRIMARY KEY (id)
);

CREATE INDEX IF NOT EXISTS avus_target_id_idx ON avus(target_id, target_type);
CREATE INDEX IF NOT EXISTS avus_avu_idx ON avus(attribute, value, unit);

COMMIT;
