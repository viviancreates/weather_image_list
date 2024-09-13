# sinatra-template

Use this repository to create new Sinatra apps. 

Optionally, to use `ActiveRecord` for database operations, add to the `app.rb`:

```ruby
require "sinatra/activerecord"
```

And in the `config/environment.rb` file add this code block:

```ruby
configure do
  # setup a database connection
  set(:database, { adapter: "sqlite3", database: "db/development.sqlite3" })
end
```

## Description
The To Do List Weather App is a Ruby application that provides current weather and generates an image based on vibe (either by city or temp idk yet) to visually represent the conditions. Additionally, the app lets the user enter their plans for the day based on weather.

## Installation
1. Clone the repo
2. Install the gems
3. Run the app with ruby app.rb

## Features
- Displays current weather by city
- Generate image
- To do list

WEATHER_API_KEY
