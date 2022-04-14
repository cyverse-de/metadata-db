BEGIN;

--
-- target type enumeration
-- Currently, only analyses, apps, other AVUs, files, folders, and users may be targets of metadata.
--
DO $$ BEGIN
    CREATE TYPE target_enum AS ENUM ('analysis', 'app', 'avu', 'file', 'folder', 'user', 'quick_launch', 'instant_launch');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;


COMMIT;
