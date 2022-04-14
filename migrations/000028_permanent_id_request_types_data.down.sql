BEGIN;

SET search_path = public, pg_catalog;

DELETE FROM permanent_id_request_types 
    WHERE type = 'DOI'
    AND description = 'Data Object Identifier';

DELETE FROM permanent_id_request_types
    WHERE type = 'ARK'
    AND description = 'Archival Resource Key';

COMMIT;