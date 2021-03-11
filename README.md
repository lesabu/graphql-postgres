# Postgres with GraphQL

following this [tutorial](https://ednsquare.com/story/how-to-connect-graphql-and-postgresql------ZSsaOO)

## Database

Create a database (locally)

### create a postgres database (assumes postgres is installed)

`createdb test`

### to delete (drop) the database

`dropdb test`

## Setup

run `yarn install` to load all packages and then `yarn db:setup` to pollute the `test` database with the tabels and fielsa provided inside `sql/setup.sql`
