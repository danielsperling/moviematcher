class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @search = params['search']
    if @search.present?
      @title = @search['title']
      @movies = Movie.where('title LIKE ?', "%#{@title}%")
    end
  end
end

# omdb API

# require 'json'
# require 'httparty'

# BASE_URL = 'http://www.omdbapi.com/?s='.freeze
# API_KEY = '&apikey=8404523a'.freeze
# PARAM = '&plot=full&'.freeze
# PAGE1 = '"&page=1'.freeze
# PAGE2 = '"&page=2'.freeze
# PAGE3 = '"&page=3'.freeze
# PAGE4 = '"&page=4'.freeze
# PAGE5 = '"&page=5'.freeze
# PAGE6 = '"&page=6'.freeze
# PAGE7 = '"&page=7'.freeze

# RANDOM_MOVIE = %w[action love star pirates].sample

# response_1 = HTTParty.get(BASE_URL + RANDOM_MOVIE + PAGE1 + API_KEY)
# @raw_data_1 = JSON.parse(response_1.body)
# @data_1 = @raw_data_1['Search']

# response_2 = HTTParty.get(BASE_URL + RANDOM_MOVIE + PAGE2 + API_KEY)
# @raw_data_2 = JSON.parse(response_2.body)
# @data_2 = @raw_data_2['Search']

# response_3 = HTTParty.get(BASE_URL + RANDOM_MOVIE + PAGE3 + API_KEY)
# @raw_data_3 = JSON.parse(response_3.body)
# @data_3 = @raw_data_3['Search']

# response_4 = HTTParty.get(BASE_URL + RANDOM_MOVIE + PAGE4 + API_KEY)
# @raw_data_4 = JSON.parse(response_4.body)
# @data_4 = @raw_data_4['Search']

# response_5 = HTTParty.get(BASE_URL + RANDOM_MOVIE + PAGE5 + API_KEY)
# @raw_data_5 = JSON.parse(response_5.body)
# @data_5 = @raw_data_5['Search']

# response_6 = HTTParty.get(BASE_URL + RANDOM_MOVIE + PAGE6 + API_KEY)
# @raw_data_6 = JSON.parse(response_6.body)
# @data_6 = @raw_data_6['Search']

# # response_7 = HTTParty.get(BASE_URL + 'rambo' + PAGE7 + API_KEY)
# # @raw_data_7 = JSON.parse(response_7.body)
# # @data_7 = @raw_data_7['Search']

# @data = @data_1 + @data_2 + @data_3 + @data_4 + @data_5 + @data_6
