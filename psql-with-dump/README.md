PSQL Regenerator from Dump

1. First connect internal tunnel with db
2. exec `pg_dump --host=localhost --port=<port> --dbname=<dbname> --username=<username> > ./dump/dump.sql`
3. exec `./setup.sh`
