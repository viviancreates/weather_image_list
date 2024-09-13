require "sinatra"
require "sinatra/reloader"
require "http"
require "google_search_results"

get("/") do
  erb(:homepage)
end

get("/weather") do
  @city = params.fetch("city")

  @raw_response = HTTP.get("https://api.weatherbit.io/v2.0/current?city=#{@city}&key=#{ENV.fetch("WEATHER_API_KEY")}")
  @parsed_response = JSON.parse(@raw_response.to_s)
  @weather_data = @parsed_response.fetch("data").first
  @description = @weather_data["weather"]["description"]

  search_params = {
    q: @description,
    engine: "google_images",
    api_key: ENV.fetch("SERP_API_KEY")
  }

  search = GoogleSearch.new(search_params)
  image_results = search.get_hash[:images_results]
  @image_url = image_results.first[:thumbnail]

  erb(:weather)
end
