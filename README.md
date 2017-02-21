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

```create database restaurant_db; ```

```create database transactions; ```

Now exit the Postgres command line tool by typing ``` \quit ```

To add the "dump" files to your empty databases use the following commands

```psql restaurant_db < restaurant_db.sql   
   psql transactions < transact.txt ```
   
You should see a list of commmands flash over the terminal. This means that the data was added.

Now try to do a simple select statement to access your data

```psql transactions ```

Now you've entered the psql commmand line tool and should see a prompt starting with "transactions=#"

Type ```select * from customers;``` You should see the contents of this table printed to the terminal. Now you're ready to start querying!

**And remember, control+C does not work to exit the psql command line tool in the terminal, you must type ``\quit`` or close the terminal window.

