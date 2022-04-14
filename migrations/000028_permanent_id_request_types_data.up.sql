BEGIN;

SET search_path = public, pg_catalog;

INSERT INTO permanent_id_request_types (type, description)
    SELECT
        'DOI',
        'Data Object Identifier'
    WHERE NOT EXISTS (
        SELECT 1
        FROM permanent_id_request_types
        WHERE type =  'DOI'
        AND description = 'Data Object Identifier'
    );

INSERT INTO permanent_id_request_types (type, description)
    SELECT
        'ARK',
        'Archival Resource Key'
    WHERE NOT EXISTS (
        SELECT 1
        FROM permanent_id_request_types
        WHERE type =  'ARK'
        AND description = 'Archival Resource Key'
    );

COMMIT;