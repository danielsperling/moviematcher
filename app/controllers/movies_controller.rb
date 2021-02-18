require 'uri'
require 'net/http'
require 'openssl'

class MoviesController < ApplicationController
  url = URI('https://movie-database-imdb-alternative.p.rapidapi.com/?s=Avengers%20Endgame&page=1&r=json')

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(url)
  request['x-rapidapi-key'] = '9808f43b20msh42d416b8692f637p127437jsn1804a8c6b03b'
  request['x-rapidapi-host'] = 'movie-database-imdb-alternative.p.rapidapi.com'

  response = http.request(request)
  puts response.read_body
end
