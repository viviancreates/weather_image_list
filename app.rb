require "sinatra"
require "sinatra/reloader"
require "http"
require "dotenv/load"

get("/") do
  erb(:homepage)
end

get("/weather") do
  @city = params.fetch("city")

  @raw_response = HTTP.get("https://api.weatherbit.io/v2.0/current?city=#{@city}&key=#{ENV.fetch("WEATHER_API_KEY")}")

  @string_response = @raw_response.to_s
  @parsed_response = JSON.parse(@string_response)
  @weather_data = @parsed_response.fetch("data").first

  erb(:weather)
end
