# Setup

## Development Dependencies

* Ruby 2.3.1
* Postgres

## Configuration

We uses [Figaro](https://github.com/laserlemon/figaro) for injecting environment variables
in development. Copy `config/application.yml.example` to `config/application.yml` and modify the
HOST variable to match your setup.

Copy `config/database.yml.example` to `config/database.yml` and modify the database name, user
and password to match your database setup.
