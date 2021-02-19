require 'json'
require 'httparty'

BASE_URL = 'http://www.omdbapi.com/?s='.freeze
API_KEY = '&apikey=8404523a'.freeze

class MoviesController < ApplicationController
  def index
    response = HTTParty.get(BASE_URL + 'harry' + API_KEY)
    @data = JSON.parse(response.body)
  end
end
