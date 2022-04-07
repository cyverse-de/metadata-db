BEGIN;

SET search_path = public, pg_catalog;

--
-- The Permanent ID requests table.
--
CREATE TABLE IF NOT EXISTS permanent_id_requests (
    id UUID NOT NULL DEFAULT uuid_generate_v1(),
    requested_by varchar(512) NOT NULL,
    type UUID,
    target_id UUID NOT NULL,
    target_type target_enum NOT NULL,
    original_path TEXT,
    permanent_id TEXT,

    CONSTRAINT permanent_id_requests_type_fkey FOREIGN KEY (type) REFERENCES permanent_id_request_types(id),
    PRIMARY KEY (id)
);

CREATE UNIQUE INDEX IF NOT EXISTS permanent_id_requests_unique ON permanent_id_requests(target_id, type);

COMMIT;