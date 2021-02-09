class PagesController < ApplicationController
  def home; end

  def user_profile
    @movies = Movie.all
  end
end
