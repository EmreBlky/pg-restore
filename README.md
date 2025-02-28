[![Codacy Badge](https://api.codacy.com/project/badge/Grade/33d85868f9d3405d82656f3235bc505c)](https://app.codacy.com/gh/tj-actions/pg-restore?utm_source=github.com\&utm_medium=referral\&utm_content=tj-actions/pg-restore\&utm_campaign=Badge_Grade_Settings)
[![CI](https://github.com/tj-actions/pg-restore/actions/workflows/test.yml/badge.svg)](https://github.com/tj-actions/pg-restore/actions/workflows/test.yml) [![Update release version.](https://github.com/tj-actions/pg-restore/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/pg-restore/actions/workflows/sync-release-version.yml) [![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fpg-restore%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+pg-restore+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## [pg-restore](https://www.postgresql.org/docs/current/app-pgrestore.html)

Restore a postgres service container using a sql backup file with psql.

> NOTE: This only supports sql backups.

### Prerequisite

Create a backup using

```shell script
$ cd [project_root]
$ mkdir backups
$ pg_dump -O -f backups/backup.sql $DATABASE_URL
```

See: https://github.com/tj-actions/pg-dump

### Usage

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Postgres Backup Restore
        uses: tj-actions/pg-restore@v4.5
        with:
          database_url: "postgres://test_user:test_password@localhost:5432/test_db"
          backup_file: "backups/backup.sql"
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|    INPUT     |  TYPE  | REQUIRED | DEFAULT |                DESCRIPTION                |
|--------------|--------|----------|---------|-------------------------------------------|
| backup\_file  | string |   true   |         |             Backup file name              |
| database\_url | string |   true   |         |               Database URL                |
|   options    | string |  false   |         | Extra options to pass directly to<br>psql |

<!-- AUTO-DOC-INPUT:END -->

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).

## Report Bugs

Report bugs at https://github.com/tj-actions/pg-restore/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
