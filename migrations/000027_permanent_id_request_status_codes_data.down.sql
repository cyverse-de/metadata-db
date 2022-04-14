BEGIN;

SET search_path = public, pg_catalog;

DELETE FROM permanent_id_request_status_codes 
    WHERE name = 'Submitted' 
    AND description = 'The request has been submitted and data moved into iDC staging, but not acted upon by the curators.';

DELETE FROM permanent_id_request_status_codes
    WHERE name = 'Pending'
    AND description = 'The request has been submitted and data moved into iDC staging, but not acted upon by the curators.';

DELETE FROM permanent_id_request_status_codes
    WHERE name = 'Evaluation'
    AND description = 'The curators are evaluating the metadata and data structure.';

DELETE FROM permanent_id_request_status_codes
    WHERE name = 'Approved'
    AND description = 'The curators have approved the data and metadata and have submitted it for a public ID.';

DELETE FROM permanent_id_request_status_codes
    WHERE name = 'Completion'
    AND description = 'The data has been successfully assigned a public ID and moved into the iDC main space.';

DELETE FROM permanent_id_request_status_codes
    WHERE name = 'Failed'
    AND description = 'The data could not be submitted for a public ID.';

COMMIT;