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
Rv.destroy_all


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
    company = Company.create({
        name: Faker::Company.unique.name,
        building_number: Faker::Address.building_number,
        address: Faker::Address.street_name,
        city: Faker::Address.city,
        state: Faker::Address.state,
        zipcode: Faker::Address.zip_code,
        phonenumber: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email,
        
    })  
end

# zionite = Company.create(name: "zionite", address: "49390 main street", city: "Torrance")
# airstream = Rv.create(name: "Airstream", capacity: 12, rate_per_day: 120.55, company: zionite)
# company666.rvs.create(make: "Airstream", model: "AX350", length: 200, width: 90, height: 98, fuel_type: "diesel")

voyeger = Company.create(name: "Voyeger", address: "958 s main street", city: "Culver City")
astonG3 = Rv.create(name: "AstonG3", capacity: 8, rate_per_day: 85.00, company: voyeger)