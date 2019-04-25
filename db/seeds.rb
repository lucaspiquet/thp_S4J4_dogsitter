# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Suppriment toutes les entrées précédentes (seul les id sont incrémentés)
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all


#  Dog
10.times do
  Dog.create!(first_name: Faker::Name.name)
end

# Dogsitter
10.times do
  Dogsitter.create!(first_name: Faker::Name.name)
end

# Stroll
10.times do
  Stroll.create!(dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id, city_id: City.all.sample.id)
end

# City
10.times do
  City.create!(name: Faker::Address.city)
end

