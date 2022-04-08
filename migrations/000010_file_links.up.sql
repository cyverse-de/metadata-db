BEGIN;

SET search_path = public, pg_catalog;

--
-- file_links table
--
CREATE TABLE IF NOT EXISTS file_links (
  file_id UUID NOT NULL,
  target_id UUID NOT NULL,
  target_type target_enum NOT NULL,
  owner_id varchar(512) NOT NULL,
  created_on timestamp DEFAULT now() NOT NULL,

  PRIMARY KEY (file_id, target_id, owner_id)
);

CREATE INDEX IF NOT EXISTS file_links_target_id_idx ON file_links(target_id);

COMMIT;