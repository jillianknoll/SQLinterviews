Postico download: (Mac-specific, but there are other GUIs for Windows)
https://eggerapps.at/postico/

Setup instructions:
https://eggerapps.at/postico/docs/v1.1.1/

Chinook db script:
https://raw.githubusercontent.com/xivSolutions/ChinookDb_Pg_Modified/master/chinook_pg_serial_pk_proper_naming.sql

After downloading Postgresql you will have access to the command line tool.

Open the terminal.

Type ```psql``` to enter the postgresql command line tool.

Type ```create database <db_name>;``` to create a new database for each Postgres "dump" file (restaurant_db.sql and transact.txt)

For example 
```create database restaurant_db;
   create database transactions; ```



