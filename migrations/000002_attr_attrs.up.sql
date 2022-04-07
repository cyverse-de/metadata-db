BEGIN;

SET search_path = public, pg_catalog;

--
-- The join table for parent and child metadata attributes.
--
CREATE TABLE IF NOT EXISTS attr_attrs (
    parent_id uuid NOT NULL,
    child_id uuid NOT NULL,
    display_order integer NOT NULL,

    CONSTRAINT attr_attrs_parent_id_fkey
        FOREIGN KEY (parent_id)
        REFERENCES attributes(id) ON DELETE CASCADE,

    CONSTRAINT attr_attrs_child_id_fkey
        FOREIGN KEY (child_id)
        REFERENCES attributes(id) ON DELETE CASCADE,
    
    CONSTRAINT attr_attrs_parent_different_from_child
        CHECK (parent_id != child_id)
);

--
-- Creates an index on the parent_id column.
--
CREATE INDEX IF NOT EXISTS attr_attrs_parent_id
ON attr_attrs(parent_id);

--
-- Creates an index on the child_id column. For the time being, a child attribute may have at most one parent.
--
CREATE UNIQUE INDEX IF NOT EXISTS attr_attrs_child_id
ON attr_attrs(child_id);


COMMIT;