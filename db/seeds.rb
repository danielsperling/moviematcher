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
