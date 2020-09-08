# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Company.destroy_all

50.times do 
    User.create({
        first_name: Faker::Name.unique.first_name,
        email: Faker::Internet.unique.email,
        password: Faker::Internet.unique.email,
        last_name: Faker::Name.unique.last_name  
    })
end




# (1..200).to_a.each do |user|
#     User.find_or_create_by(first_name: "amirhossein", last_name: "Ghaffarkhan", age: 38, number_of_guests: 3, address: "3592 huntington blvd", city: "huntington")
# end