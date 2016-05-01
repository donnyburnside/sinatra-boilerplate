# Sinatra Seed
My sinatra seed app.

[Demo](https://sinatraseed.herokuapp.com/) (takes a few seconds to load if its been inactive for a while)

## Tools Used

* **Sinatra** - a Ruby MVC framework
* **Sinatra-Contrib** - useful extensions for Sinatra apps
* **Haml** - html templating
* **ActiveRecord** - database mapping
* **PostCSS** - css pre-processor
* **Gulp** - task runner
* **Shotgun** & **Tux** - for development, automatic app reloads and a REPL

## Getting started

* Clone the project onto your machine
* Run `bundle install --without production` to install Ruby gems
* Run `npm install` to install npm dependencies
* Run `rake db:setup` to setup the development database

## Development

* Run `shotgun --server=thin --port=9292 config.ru` to start local server. Any time a change is made to your app, it is automatically loaded in
* Run `gulp` to compile static assets
* Run `gulp watch` to automatically compile any change assets
* Run `gulp serve` to start BrowserSync

## Adding Models

* Run `rake db:create_migration NAME=create_####` (where #### is the name of the model) to setup database migrations
* Run `rake db:migrate` to add to table to the database

For more tasks, run `rake -T` to setup the development database

## Deployment

* Create a Heroku instance
* Deploy!
* Run `heroku run rake db:migrate` to setup database migrations

## Project Structure

* app/
	* controllers/ - routes and logic
	* helpers/ - small utility functions
	* models/ - `ActiveRecord::Base` subclasses
* config/ - config files, such as the database configuration
* db/ - the database schema and migrations
* public/ - compiled frontend assets
	* css/
	* js/
* setup/ - setup files which load in libraries etc.
* src/ - src files for frontend assets
	* css/
	* js/
* views/ - haml templates
* app.rb - starting point of the app

---

© Donny Burnside 2016
