BEGIN;

SET search_path = public, pg_catalog;

DELETE FROM value_types
    WHERE id = '4CB79D83-E694-4ACF-AA60-DDADEE087B24'
    AND name = 'Timestamp';

DELETE FROM value_types
    WHERE id = '8130EC25-2452-4FF0-B66A-D9D3A6350816'
    AND name = 'Boolean';

DELETE FROM value_types
    WHERE id = '29F9F4FD-594C-493D-9560-FE8851084870'
    AND name = 'Number';

DELETE FROM value_types
    WHERE id = 'C6CB42CD-7C47-47A1-8704-F6582B510ACF'
    AND name = 'Integer';

DELETE FROM value_types
    WHERE id = 'C29B0B10-D660-4582-9EB7-40C4F1699DD6'
    AND name = 'String';

DELETE FROM value_types
    WHERE id = '127036FF-EF19-4665-A9A9-7A6878D9813A'
    AND name = 'Multiline Text';

DELETE FROM value_types
    WHERE id = '28A1F81A-8B4F-4940-BCD4-E39241BF15DC'
    AND name = 'URL/URI';

DELETE FROM value_types
    WHERE id = 'B17ED53D-2B10-428F-B38A-C9DEC3DC5127'
    AND name = 'Enum';

DELETE FROM value_types
    WHERE id = 'AAF2ECDC-7D50-11E7-AA7D-F64E9B87C109'
    AND name = 'OLS Ontology Term';

DELETE FROM value_types
    WHERE id = 'B5BF6E00-47B9-49D4-B842-C9CE8F1E4F81'
    AND name = 'UAT Ontology Term';

DELETE FROM value_types
    WHERE id = '449A4BF0-16C8-4E33-BEF7-737D1C4E5CDE'
    AND name = 'Grouping';

COMMIT;