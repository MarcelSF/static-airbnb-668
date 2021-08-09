require 'open-uri'

class FlatsController < ApplicationController
  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    # Access the URL with Open-URI
    # Parse the JSON into Ruby
    @flats = JSON.parse(open(url).read)
    # Iterate over the contect of the JSON and organize and display that content

  end
end
