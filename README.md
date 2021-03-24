# Stub Protected Environments

This gem stubs the `db:check_protected_environments` rake task that was introduced in Rails 5
to protect users from performing database actions on production databases.

While that endeavor may be founded on good intentions, we feel that the protected environment feature is a bike shed on core `rails`
and is extremely obtrusive and negatively impacts the productivity of a Rails application development.

Using this gem, you will no longer experience

```
rake db:migrate
rake aborted!
ActiveRecord::NoEnvironmentInSchemaError:

Environment data not found in the schema. To resolve this issue, run:

        bin/rails db:environment:set RAILS_ENV=development

```

## Philosophy

Should Rails protect you from dropping a database?  or migrating a change?  We think not.
If you are attempting to upgrade your Rails 4 application to Rails 5, you might experience this miserable scenario:

```
rake db:migrate
ActiveRecord::NoEnvironmentInSchemaError  <-- rails stops you
rails db:environment:set RAILS_ENV=development  <-- makes you type more stuff
rake db:migrate  <-- yes, that is what we are trying to do in the first place

Directly inheriting from ActiveRecord::Migration is not supported. Please specify the Rails release the migration was written for:
  class DeviseCreateUsers < ActiveRecord::Migration[4.2]
  Migration error -

OK, let's fix the migration and run again...
rake db:migrate
ActiveRecord::NoEnvironmentInSchemaError  <-- !#$%^  I ALREADY DID THAT!
```


## Installation

Include this gem in your Gemfile:
```
gem 'stub_protected_environments'
```

> TIP: include the gem in the development and test sections of your Gemfile to retain the Rails protection in production

## Usage

Run your database rake tasks without obstruction:

`rake db:drop db:create db:schema_load`

And have a great day!

## Contributing
Submit pull requests, propose features and discuss issues. We are in this together.
