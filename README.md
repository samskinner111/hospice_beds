# HospiceBeds

## Developer's Getting Started Guide

This app is built on Rails 5.0 and Ruby 2.2.3.  Both must be installed locally to use the app.  

Pull the code and run 'bundle install'.  


### Database creation
As a prerequisite it is assumed that you have a Postgres server setup on your development computer and are an administrative user.  You will have two databases on your local to run and test this project.  Both will be accessed by the `hb_web` user.

- `hb_development`
- `hb_test`

In the **local development mode only**, you may use the shared password `devonly:l/8H/6wiGKarJoAaz6GmJEOIcnKfQNHhq6BAttO4jJSZrwTOEE'`. Or you may setup your own password on your system and set it in the database.yml.  **At no time shall this password be used on a staging or production server.**  Every such server must have its own unique password that is never stored in this repository.

To setup the databases for the first time, run `psql` as your admin user and then run the following SQL to configure the databases.

#### Create the development only database user #####
In terminal, run:

  `psql < db/create_development_only_users.sql`

The `db/create_development_only_users.sql` sets up the hb_web user as a superuser on your local development system.

#### Create the development databases ####
In terminal, run:

  `psql < db/rebuild_development.sql`

Finally, run 'rake db:setup' to create the schema and seed the databases.

### Users
The preceeding creates and seeds the databases.  In particular, it creates four users with different roles:
  shaw0033@gmail.com, role: 'app_admin'
  samskinnerphd@gmail.com, role: 'app_admin'
  hospice_admin@example.com, role: 'hospice_admin'
  hospice_nurse@example.com, role: 'hospice_nurse'
All four use the same password: 'password'.

At present, role does not matter but soon it will determine the parts of the app that are visible to users with different roles.  

In the rails console, create a user for yourself with an 'app_admin' role.  This will be your main login.
