require 'json'
require 'httparty'

BASE_URL = 'http://www.omdbapi.com/?t='.freeze
API_KEY = '&apikey=8404523a'.freeze
PARAM = '&plot=full&'.freeze

class MoviesController < ApplicationController
  def index
    response = HTTParty.get(BASE_URL + 'star' + PARAM + API_KEY)
    @raw_data = JSON.parse(response.body)
    @data = @raw_data['Search']
  end
end
