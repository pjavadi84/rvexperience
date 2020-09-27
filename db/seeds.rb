# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'active_record/fixtures'
# Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "operating_systems")

User.destroy_all
Company.destroy_all



50.times do 
    User.create({
        first_name: Faker::Name.unique.first_name,
        email: Faker::Internet.unique.email,
        last_name: Faker::Name.unique.last_name,
        address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        country: Faker::Address.country,
        zipcode: Faker::Address.zip_code
    })

    
end

50.times do
    Company.create({
        name: Faker::Company.unique.name,
        building_number: Faker::Address.building_number,
        address: Faker::Address.street_name,
        city: Faker::Address.city,
        state: Faker::Address.state,
        zipcode: Faker::Address.zip_code,
        phonenumber: Faker::PhoneNumber.cell_phone

    })

end
    





# (1..200).to_a.each do |user|
#     User.find_or_create_by(first_name: "amirhossein", last_name: "Ghaffarkhan", age: 38, number_of_guests: 3, address: "3592 huntington blvd", city: "huntington")
# end