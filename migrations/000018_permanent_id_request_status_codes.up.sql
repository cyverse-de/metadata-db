BEGIN;

SET search_path = public, pg_catalog;

--
-- The statuses that have been applied to each Permanent ID request.
--
CREATE TABLE IF NOT EXISTS permanent_id_request_status_codes (
    id UUID NOT NULL DEFAULT uuid_generate_v1(),
    name VARCHAR(64) NOT NULL,
    description TEXT NOT NULL,

    PRIMARY KEY (id)
);

CREATE UNIQUE INDEX IF NOT EXISTS permanent_id_request_status_codes_name_unique
    ON permanent_id_request_status_codes(name);

COMMIT;
