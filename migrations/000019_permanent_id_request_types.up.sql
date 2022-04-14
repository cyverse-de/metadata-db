BEGIN;

SET search_path = public, pg_catalog;

--
-- The possible Permanent ID types of each request.
--
CREATE TABLE IF NOT EXISTS permanent_id_request_types (
    id UUID NOT NULL DEFAULT uuid_generate_v1(),
    type VARCHAR NOT NULL,
    description TEXT NOT NULL,

    PRIMARY KEY (id)
);

CREATE UNIQUE INDEX IF NOT EXISTS permanent_id_request_types_unique
    ON permanent_id_request_types(type);

COMMIT;
