BEGIN;

SET search_path = public, pg_catalog;

--
-- The statuses that have been applied to each Permanent ID request.
--
CREATE TABLE IF NOT EXISTS permanent_id_request_statuses (
    id UUID NOT NULL DEFAULT uuid_generate_v1(),
    permanent_id_request UUID NOT NULL,
    permanent_id_request_status_code UUID NOT NULL,
    date_assigned TIMESTAMP DEFAULT now() NOT NULL,
    updated_by varchar(512) NOT NULL,
    comments TEXT,

    CONSTRAINT permanent_id_request_statuses_request_fkey 
        FOREIGN KEY (permanent_id_request) 
        REFERENCES permanent_id_requests(id) ON DELETE CASCADE,

    CONSTRAINT permanent_id_request_statuses_status_code_fkey 
        FOREIGN KEY (permanent_id_request_status_code) 
        REFERENCES permanent_id_request_status_codes(id),
        
    PRIMARY KEY (id)
);

COMMIT;
