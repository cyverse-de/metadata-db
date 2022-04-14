BEGIN;

SET search_path = public, pg_catalog;

--
-- Stores known metadata value types.
--
CREATE TABLE IF NOT EXISTS value_types (
    id uuid NOT NULL DEFAULT uuid_generate_v1(),
    name varchar(64) NOT NULL,

    CONSTRAINT value_types_unique_name 
        UNIQUE (name),
    
    PRIMARY KEY (id)
);

COMMIT;
