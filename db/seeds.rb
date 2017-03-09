# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

continent = Continent.where(name: 'Europe').first_or_create
Country.where(name: 'France', continent_id: continent.id).first_or_create
Country.where(name: 'Deutchland', continent_id: continent.id).first_or_create
continent = Continent.where(name: 'America').first_or_create
Country.where(name: 'Brasil', continent_id: continent.id).first_or_create
Country.where(name: 'Mexico', continent_id: continent.id).first_or_create

10.times do |i|
  User.create!(
    email:   "test#{ i }@test.com",
    company: "Company test #{ rand(9999) }",
    country_id: (rand(3) + 1),
    active:  true
  )
end

