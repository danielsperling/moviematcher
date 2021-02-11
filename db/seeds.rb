# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Movie.destroy_all

print 'User1'
user1 = User.create(email: 'test@email.com', password: 123_456, name: 'Daniel', username: 'Daniel13')
user1.save!
print 'created'

sexy_beast = Movie.create(title: 'Sexy Beast', rating: 7.3, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'Brutal gangster Don Logan recruits "retired" safecracker Gal for one last job, but it goes badly for both of them.')
sexy_beast.save!
puts 'Movie Created'

star_wars = Movie.create(title: 'Star Wars: Episode IV', rating: 8.6, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empires world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader')
star_wars.save!
puts 'Movie Created'

pulp_fiction = Movie.create(title: 'Pulp Fiction', rating: 8.9, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption..')
pulp_fiction.save!
puts 'Movie Created'

the_matrix = Movie.create(title: 'The Matrix', rating: 7.3, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.png'), description: 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.')
the_matrix.save!
puts 'Movie Created'
