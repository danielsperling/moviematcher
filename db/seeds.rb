User.destroy_all
Movie.destroy_all
Genre.destroy_all

scrape = Scraper.new
movies = scrape.scraper
Movie.create_movies(movies)
puts 'Movies Generated'
