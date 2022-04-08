# Discovery Environment Metadata Database Schema

This repository contains the migration files for the metadata database used by
the CyVerse Discovery Environment.

The migrations use the [golang-migrate/migrate][5] system and are stored within
the `migrations` folder. They're written as pairs of simple SQL files, one each
for applying and reverting each migration.

## Prerequisites

Before migrations can be run, you need the following:

- PostgreSQL installed somewhere.
- A local installation of https://github.com/golang-migrate/migrate.
- The `metadata` database exists.
- An account used to run the migrations, which must be the owner of the database
  and schema.
- The `uuid-ossp` extension must be installed.

## For existing metadata database installations

If you are running migrations for an external site, make sure you install all of
the old conversions using the `facepalm` tool, available at
[https://github.com/cyverse-de/facepalm](https://github.com/cyverse-de/facepalm).
The conversions are available in this repository in the `old` directory.

You can verify the current version of the database in the `version` tables. The
`version` table contains the versions applied by the old `facepalm` tool and
should contain `2.36.0:20210218.01` as the latest version before running
`migrate`.

## Database URLs

The `migrate` command needs a connection URL when running migrations. It must be
in the format:

```
postgres://user:password@host:port/database-name?query-params
```

The password component of the URL is optional, so if you have a correctly
configured `.pgpass` file available then it can be omitted. Also, we haven't
implemented SSL for any of our PostgreSQL instances, so the `sslmode` parameter
should always be set to `disable` at this time. Here's an example of a database
URL that we might use in one of our deployments (with a bogus host name).

```
postgres://de@postgres.example.org/de?sslmode=disable.
```

## Common Examples

These examples use the environment variable, `DBURL`, to indicate where the URL
should be specified on the command line.

Update the database to the latest version:

```
$ migrate -database "$DBURL" -path migrations up
```

Remove all database migrations, effectively clearing the database:

```
$ migrate -database "$DBURL" -path migrations down
```

Delete everything in the database schema (extensions are unaffected by this):

```
$ migrate -database "$DBURL" -path migrations drop
```

Remove the most recent migration from the database:

```
$ migrate -database "$DBURL" -path migrations down 1
```

[1]: https://github.com/cyverse-de/de-db
[2]: https://github.com/cyverse-de/metadata-db
[3]: https://github.com/cyverse-de/permissions-db
[4]: https://github.com/cyverse-de/notifications-db
[5]: https://github.com/golang-migrate/migrate
