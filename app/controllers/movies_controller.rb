require 'httparty'

BASE_URL = 'http://www.omdbapi.com/?t='.freeze
API_KEY = '&apikey=8404523a'.freeze

class MoviesController < ApplicationController
  def index
    @results = HTTParty.get(BASE_URL + 'rambo' + API_KEY)
  end
end

# http://www.omdbapi.com/?i=tt3896198&apikey=8404523a
