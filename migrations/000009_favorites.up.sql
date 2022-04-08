BEGIN;

SET search_path = public, pg_catalog;

--
-- favorites table
--
CREATE TABLE IF NOT EXISTS favorites (
  target_id UUID NOT NULL,
  target_type target_enum NOT NULL,
  owner_id varchar(512) NOT NULL,
  created_on timestamp DEFAULT now() NOT NULL,

  PRIMARY KEY (owner_id, target_id)
);

COMMIT;
