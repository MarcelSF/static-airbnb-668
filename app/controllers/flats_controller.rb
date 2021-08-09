require 'open-uri'

class FlatsController < ApplicationController
  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    # Access the URL with Open-URI
    # Parse the JSON into Ruby
    @flats = JSON.parse(open(url).read)
    # Iterate over the contect of the JSON and organize and display that content
  end

  def show
    # The show user action wants to display all the details of ONE Flat
    # Get the info from the JSON
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    flats = JSON.parse(open(url).read)
    @flat = flats.find { |flat| flat["id"] == params[:id].to_i }
  end
end
