BEGIN;

SET search_path = public, pg_catalog;


-- We can do an ON CONFLICT DO NOTHING HERE because of the uniqueness
-- constraints that exist on both fields.
INSERT INTO value_types(id, name) VALUES
    ( '4CB79D83-E694-4ACF-AA60-DDADEE087B24', 'Timestamp' ),
    ( '8130EC25-2452-4FF0-B66A-D9D3A6350816', 'Boolean' ),
    ( '29F9F4FD-594C-493D-9560-FE8851084870', 'Number' ),
    ( 'C6CB42CD-7C47-47A1-8704-F6582B510ACF', 'Integer' ),
    ( 'C29B0B10-D660-4582-9EB7-40C4F1699DD6', 'String' ),
    ( '127036FF-EF19-4665-A9A9-7A6878D9813A', 'Multiline Text' ),
    ( '28A1F81A-8B4F-4940-BCD4-E39241BF15DC', 'URL/URI'),
    ( 'B17ED53D-2B10-428F-B38A-C9DEC3DC5127', 'Enum'),
    ( 'AAF2ECDC-7D50-11E7-AA7D-F64E9B87C109', 'OLS Ontology Term' ),
    ( 'B5BF6E00-47B9-49D4-B842-C9CE8F1E4F81', 'UAT Ontology Term' ),
    ( '449A4BF0-16C8-4E33-BEF7-737D1C4E5CDE', 'Grouping' )
ON CONFLICT DO NOTHING;

COMMIT;