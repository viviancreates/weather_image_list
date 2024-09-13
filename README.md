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

## Image Weather App Description
The Image Weather App is a Ruby application that provides current weather and generates an image to visually represent the conditions of the weather.

## Installation
1. Clone the repo
2. Install the gems
3. Run the app with bin/server
4. View app on a port
5. Enter the city you want to see the weather for

## Features
- Displays current weather by city
- Generate image based on weather

WEATHER_API_KEY
SERP_API_KEY
