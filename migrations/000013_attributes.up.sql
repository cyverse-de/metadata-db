BEGIN;

SET search_path = public, pg_catalog;

--
-- Stores known metadata field information.
--
CREATE TABLE IF NOT EXISTS attributes (
    id uuid NOT NULL DEFAULT uuid_generate_v1(),
    name varchar(64) NOT NULL,
    description text NOT NULL,
    required boolean NOT NULL DEFAULT FALSE,
    value_type_id uuid NOT NULL,
    settings json,
    created_by varchar(512) NOT NULL,
    modified_by varchar(512) NOT NULL,
    created_on timestamp DEFAULT now() NOT NULL,
    modified_on timestamp DEFAULT now() NOT NULL,

    CONSTRAINT attributes_value_type_id_fkey 
        FOREIGN KEY (value_type_id) 
        REFERENCES value_types(id),

    PRIMARY KEY (id)
);

COMMIT;
