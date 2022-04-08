BEGIN;

SET search_path = public, pg_catalog;

--
-- ratings table
--
CREATE TABLE IF NOT EXISTS ratings (
  id UUID NOT NULL DEFAULT uuid_generate_v1(),
  rating integer NOT NULL,
  target_id UUID NOT NULL,
  target_type target_enum NOT NULL,
  owner_id varchar(512) NOT NULL,
  created_on timestamp DEFAULT now() NOT NULL,

  PRIMARY KEY (id)
);

CREATE INDEX IF NOT EXISTS ratings_target_id_idx ON ratings(target_id);
CREATE INDEX IF NOT EXISTS ratings_owner_id_idx ON ratings(owner_id);

COMMIT;
