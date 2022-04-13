BEGIN;

SET search_path = public, pg_catalog;

-- We do the inserts conditionally just in case the full
-- record already exists. Done this way because there isn't a uniqueness
-- constraint on the name/description combination, so ON CONFLICT won't
-- work.
INSERT INTO permanent_id_request_status_codes (name, description)
    SELECT
        'Submitted',
        'The request has been submitted and data moved into iDC staging, but not acted upon by the curators.'
    WHERE NOT EXISTS (
        SELECT 1 
        FROM permanent_id_request_status_codes 
        WHERE name = 'Submitted'
        AND description = 'The request has been submitted and data moved into iDC staging, but not acted upon by the curators.'
    );

INSERT INTO permanent_id_request_status_codes (name, description)
    SELECT
        'Pending',
        'The curators are waiting for a response from the requesting user.'
    WHERE NOT EXISTS (
        SELECT 1
        FROM permanent_id_request_status_codes
        WHERE name = 'Pending'
        AND description = 'The curators are waiting for a response from the requesting user.'
    );

INSERT INTO permanent_id_request_status_codes (name, description)
    SELECT
        'Evaluation',
        'The curators are evaluating the metadata and data structure.'
    WHERE NOT EXISTS (
        SELECT 1
        FROM permanent_id_request_status_codes
        WHERE name = 'Evaluation'
        AND description = 'The curators are evaluating the metadata and data structure.'
    );

INSERT INTO permanent_id_request_status_codes (name, description)
    SELECT
        'Approved',
        'The curators have approved the data and metadata and have submitted it for a public ID.'
    WHERE NOT EXISTS (
        SELECT 1
        FROM permanent_id_request_status_codes
        WHERE name = 'Approved'
        AND description = 'The curators have approved the data and metadata and have submitted it for a public ID.'
    );

INSERT INTO permanent_id_request_status_codes (name, description)
    SELECT
        'Completion',
        'The data has been successfully assigned a public ID and moved into the iDC main space.'
    WHERE NOT EXISTS (
        SELECT 1
        FROM permanent_id_request_status_codes
        WHERE name = 'Completion'
        AND description =  'The data has been successfully assigned a public ID and moved into the iDC main space.'
    );

INSERT INTO permanent_id_request_status_codes (name, description)
    SELECT
        'Failed',
        'The data could not be submitted for a public ID.'
    WHERE NOT EXISTS (
        SELECT 1
        FROM permanent_id_request_status_codes
        WHERE name =  'Failed'
        AND description =  'The data could not be submitted for a public ID.'
    );

COMMIT;