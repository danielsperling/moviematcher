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

sexy_beast = Movie.create(title: 'Sexy Beast', rating: 7.3, poster: File.open(Rails.root + 'app/assets/images/Sexybeast.jpg'))
sexy_beast.save!
puts 'Movie Created'
