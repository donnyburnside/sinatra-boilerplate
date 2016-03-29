# Sinatra Seed
My sinatra seed app.

[Demo](https://sinatraseed.herokuapp.com/)

## Tools Used

* **Sinatra** - a Ruby MVC framework
* **PostCSS** - css pre-processor
* **Gulp** - task runner
* **Haml** - html templating
* **ActiveRecord** - database mapping
* **Shotgun** & **Tux** - for development, automatic reloading and a REPL for your app
* **Mocha** - mocking to improve your tests
* **Foreman** - procfiles for deployment and local development
* **Sinatra-Contrib** - useful extensions for Sinatra apps
* A config file - for local development

### Getting started

* Clone the project onto your machine
* Run `bundle install --without production` to install Ruby gems
* Run `npm install` to install npm dependencies

### Development

* Run `rake db:migrate` to setup the development database
* Run `shotgun config.ru` to start local server
* Run `gulp` (in a separate terminal) to begin auto compiling assets
* Run `gulp serve` (in another separate terminal) to start BrowserSync

### Adding Models

* Run `rake db:create_migration NAME=create_####` (where #### is the name of the model) to setup database migrations
* Run `rake db:migrate` to add to table to the database

For more tasks, run `rake -T` to setup the development database

### Deployment

* Create a Heroku instance
* Deploy!
* Run `heroku run rake db:migrate` to setup database migrations

### Project Structure

* app/
	* helpers/ - small utility functions
	* lib/ - domain specific objects that are not models
	* models/ - `ActiveRecord::Base` subclasses
	* routes/ - effectively the controllers
* app.rb - starting point of the app
* config/ - contains `config.yml`
* config.ru - used by Foreman
* db/
* public/ - compiled frontend assets
	* css/
	* js/
* src/ - all src files go here
	* css/
	* js/
* tests/ - mirrors each of the directories in `app/`
	* helpers/
	* lib/
	* models/
	* routes/
	* test_helper.rb - include in all your unit tests
* views/ - haml templates

---

© Donny Burnside 2016
