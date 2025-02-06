# Bad Code

This is some bad code that I typed in from this [video](https://youtu.be/fbxMV76e7_E?si=3QiMOvKmhTKRv5ZV) by Dave Farley of Continuous Delivery. He's talking about the pros/cons of Pair Programming. About halfway through the video he and a friend look at some bad(tm) Java code and attempt to refactor it. Their point is to demonstrate how pair programming works. However, I felt challenged to see how I would refactor it so I typed in the code from pausing the video.

The only change I made was to use Postgresql instead of MySql.

If you are as twisted as I am maybe you want to try your refactoring skills too!

## Getting Started

### What You'll Need

- Docker desktop app
- IDE of your choosing
- Some Java skills (rusty or otherwise)
- PSQL client (I brew install'd libpq since I don't like installing the full postgres on my machine: `brew install libpq`)

### To Run The App

I've included a `docker-compose.yml` that you can use to run postgres with the hard-coded username / password.

1. Start up the database (in the background)
    `docker compose up -d`
2. Create the tables and seed some data
    `psql -h 127.0.0.1 -U root -d store < create_database.sql`
    the password is `password123`
3. Run the app
    `gradle run -q --console=plain`

### Seed Data

#### Customers

| email | is_vip |
|---|---|
| bilbo@example.com | true |
| frodo@example.com | false |

#### Items

| name | price |
|---|---|
| ring | 97.99 |
| cloak | 47.99 |

#### Inventory

| item | quantity |
|---|---|
| ring | 1 |
| cloak | 10 |

#### Orders

| customer_name | items | total |
|---|---|---|
| | | |

### If You Want To Connect To The Database

`psql -h 127.0.0.1 -U root -d store`
the password is `password123`

### If You Want To Reset The Database

1. Teardown the database
    `docker compose down -v`
1. Start up the database (in the background)
    `docker compose up -d`
3. Create the tables and seed some data
    `psql -h 127.0.0.1 -U root -d store < create_database.sql`
    the password is `password123`
4. Run the app
    `gradle run -q --console=plain`

