# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
<!-- paste your terminal output here -->
```text
C:\Users\Kevin>sqlite3 dummy.db
SQLite version 3.8.4.3 2014-04-03 16:53:12
Enter ".help" for usage hints.
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite>
```
## Release 1: Insert Data 
<!-- paste your terminal output here -->
```text
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 00:55:50  2014-04-27 00:55:50
2           Kevin       Zhou        kz363@nyu.edu          2014-04-27 01:01:36  2014-04-27 01:01:36
sqlite>
```
## Release 2: Multi-line commands
<!-- paste your terminal output here -->
```text
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('no
w'));
Error: UNIQUE constraint failed: users.email
```
## Release 3: Add a column
<!-- paste your terminal output here -->
```text
sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(64);
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nickname VARCHAR(64));
sqlite> UPDATE users SET nickname = 'Kimchee' WHERE id = 1;
sqlite> UPDATE users SET nickname = 'Kev' WHERE id = 2
   ...> ;
sqlite> SELECT * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 00:55:50  2014-04-27 00:55:50  Kimchee
2           Kevin       Zhou        kz363@nyu.edu          2014-04-27 01:01:36  2014-04-27 01:01:36  Kev
```
## Release 4: Change a value
<!-- paste your terminal output here -->
```text
sqlite> UPDATE users SET first_name='Kimmy', nickname='Ninja Coder', updated_at= DATETIME('now') WHERE id=1;
sqlite> SELECT * from users;
id          first_name  last_name   email                  created_at           updated_at           nickname
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-27 00:55:50  2014-04-27 01:18:32  Ninja Coder
2           Kevin       Zhou        kz363@nyu.edu          2014-04-27 01:01:36  2014-04-27 01:01:36  KZ
```
## Release 5: Reflect
<!-- Add your reflection here -->
I'm glad we finally got to use SQL on our own machines instead of a website like SQLZoo. I kept wondering through these challenges where people entered SQL commands and I guess SQLite is one of the ways. The only thing I'm unsure about in this challenge is when we added a new column. The instructions said to make it a mandatory field with NOT NULL, but as far as I understand, you can only use NOT NULL when creating the table. I don't know how to add a new column AND make it mandatory.
