User.destroy_all
Movie.destroy_all
Genre.destroy_all

scrape = Scraper.new
movies = scrape.scraper
Movie.create_movies(movies)

puts 'Creating Genres'
action = Genre.create(genre: 'Action')
action.save!

romance = Genre.create(genre: 'Romance')
romance.save!

comedy = Genre.create(genre: 'Comedy')
comedy.save!

thriller = Genre.create(genre: 'Thriller')
thriller.save!

fantasy = Genre.create(genre: 'Fantasy')
fantasy.save!
puts 'Genres Created'



<%= form_tag(movies_path, method: :get) do %>
  <%= text_field_tag(:title, params[:title]) %>
  <%= submit_tag("Title") %>
  <% end %>




@movies = Movie.all
@search = params['search']
if @search.present?
  @title = @search['title']
  @movies = Movie.where('title LIKE ?', "%#{@title}%")
end

<%= simple_form_for :search, url: movies_path, method: "GET", html: { class: 'form-inline' } do |f| %>
    <%#= f.input :title, input_html: {value: ""} %>
    <%= f.input :genre, :collection => %w[Action Comedy Mystery Sci-Fi Adventure Fantasy ], label_method: :second %> 
    <%= f.submit "Search", class: "btn btn-primary" %>
  <% end %>



  # if params[:category] != "Surpise" && params[:city]
#   @courses = @courses.near(params[:city]) if params[:city]
#   @courses = @courses.where(category: params[:category]) if params[:category] != "Surpise"
# elsif
#   params[:category] == "Surpise" && params[:city]
#   @courses = @courses.near(params[:city]) if params[:city]
# else
#   @courses = Course.all

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