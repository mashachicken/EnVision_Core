# README

This project is an API for the purposes of the Envision project, used to store and present information on environmental impacts. Used for purposes of back-end support for our main server, this is not designed for use by end-users. It can however support them.

### prerequisites
ruby 2.6.5
postgres server

### setup
Before starting setup, ensure the above prerequisites are installed

follow these steps
```bash
  bundle install
  rake db:create
  rake db:schema:load
  rake db:seed
  rails s
```


### Endpoints

get '/diets/search'
params:
  - name (string)
description: Returns diet information with a matching name of the parameter

get '/diets'
Returns all diets

get '/diets/[:diet_id]'
Returns a diet with a matching ID
