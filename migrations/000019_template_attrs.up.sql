BEGIN;

SET search_path = public, pg_catalog;

--
-- The join table for metadata templates and attributes.
--
CREATE TABLE IF NOT EXISTS template_attrs (
    template_id uuid NOT NULL,
    attribute_id uuid NOT NULL,
    display_order integer NOT NULL,

    CONSTRAINT template_attrs_template_id_fkey 
        FOREIGN KEY (template_id) 
        REFERENCES templates(id) ON DELETE CASCADE,

    CONSTRAINT template_attrs_attribute_id_fkey 
        FOREIGN KEY (attribute_id) 
        REFERENCES attributes(id) ON DELETE CASCADE

);

--
-- Creates an index on the template_id column.
--
CREATE INDEX IF NOT EXISTS template_attrs_template_id ON template_attrs(template_id);

--
-- Creates an index on the attribute_id column.
--
CREATE INDEX IF NOT EXISTS template_attrs_attribute_id ON template_attrs(attribute_id);

COMMIT;