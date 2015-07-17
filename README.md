# Creators School Sinatra skeleton

This is a very basic setup of a Sinatra app, that already has a model example.

## Getting Started

To get started run the following commands:

```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
```

*Note:* This app assumes you have
[sqlite3](https://www.sqlite.org/download.html).

## Running the app

To run the app we are using [shotgun](https://github.com/rtomayko/shotgun),
which means you can run just by typing `shotgun`.

## Adding some posts

In order to interact with the database you can run
[tux](https://github.com/cldwalker/tux), which is an interactive shell for
Sinatra. Start it by typing `tux`.

Once in the console, write:

```
Post.create title: "Some title"
exit
```

## Generating Migrations

There are some useful tasks on the Rakefile, including one to generate
migrations. It runs as follows:

```
bundle exec rake db:create_migrations NAME=migration_name
```
