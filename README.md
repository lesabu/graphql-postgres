# Postgres with GraphQL

following this [tutorial](https://ednsquare.com/story/how-to-connect-graphql-and-postgresql------ZSsaOO)

## Database

Create a database (locally)

### create a postgres database (assumes postgres is installed locally)

`createdb test`

### to delete (drop) the database

`dropdb test`

## Setup

### .env

create an `.env` file to connect to the database. If there is no User and Password setup for the database, then the default login is as followed (locally):

```
DATABASE_URL=postgres:postgres:postgres@localhost:{local_port}/{databas_name}
```

### install

run `yarn install` to load all packages and then `yarn db:setup` to pollute the `test` database with the tabels and fields provided inside `sql/setup.sql`
