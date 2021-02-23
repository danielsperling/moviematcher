require 'nokogiri'
require 'httparty'

User.destroy_all
Movie.destroy_all

url = 'https://www.imdb.com/search/keyword/?ref_=kw_ref_gnr&sort=moviemeter,asc&mode=detail&page=1&genres=Action'
unparsed_page = HTTParty.get(url)
parsed_page = Nokogiri::HTML(unparsed_page.body)
movie_card = parsed_page.css('div.lister-item.mode-detail')

movie_card.each do |pop|
  Movie.title = pop.css('div.lister-item-content').css('h3').css('a').text,
                Movie.year = pop.css('div.lister-item-content').css('span.lister-item-year').text,
                Movie.plot = pop.css('div.lister-item-content').css('p')[1].text,
                Movie.poster = pop.css('div.lister-item-image.ribbonize > a > img').map { |img| img['loadlate'] }
  Movie.save!
end

# print 'User1'
# user1 = User.create(email: 'test@email.com', password: 123_456, name: 'Testi', username: 'Testi The Test', bio: 'I like action movies and sci-fi movies')
# user1.save!
# print 'created'

# sexy_beast = Movie.create(title: 'Sexy Beast', rating: 7.3, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'Brutal gangster Don Logan recruits "retired" safecracker Gal for one last job, but it goes badly for both of them.')
# sexy_beast.save!
# puts 'Movie Created'

# star_wars = Movie.create(title: 'Star Wars: Episode IV', rating: 8.6, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empires world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader')
# star_wars.save!
# puts 'Movie Created'

# pulp_fiction = Movie.create(title: 'Pulp Fiction', rating: 8.9, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption..')
# pulp_fiction.save!
# puts 'Movie Created'

# the_matrix = Movie.create(title: 'The Matrix', rating: 7.3, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.')
# the_matrix.save!
# puts 'Movie Created'
