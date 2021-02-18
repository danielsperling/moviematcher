require 'json'
require 'httparty'

BASE_URL = 'http://www.omdbapi.com/?t='.freeze
API_KEY = '&apikey=8404523a'.freeze

class MoviesController < ApplicationController
  def index
    response = HTTParty.get(BASE_URL + 'rambo' + API_KEY)
    @data = JSON.parse(response.body)
  end
end

# http://www.omdbapi.com/?i=tt3896198&apikey=8404523a
