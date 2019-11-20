# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#


Restaurant.destroy_all
Review.destroy_all


20.times do
  r = Restaurant.create!(name: Faker::Name.name,
                         address: Faker::Address.street_name,
                         category: %w[chinese italian japanese french belgian].sample)
  puts "Created #{r.name}"
  Review.create!(content: Faker::Book.genre,
                 ratings: rand(1..5),
                 restaurant_id: Restaurant.all.sample.id)
end


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
