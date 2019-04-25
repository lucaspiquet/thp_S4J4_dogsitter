require 'faker'

# Suppriment toutes les entrées précédentes (seul les id sont incrémentés)
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all


#  Dog
10.times do
  Dog.create!(first_name: Faker::FunnyName.two_word_name)
end

# Dogsitter
10.times do
  Dogsitter.create!(first_name: Faker::FunnyName.two_word_name)
end

# City
10.times do
  City.create!(name: Faker::Address.city)
end

# Stroll
20.times do
  Stroll.create!(dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id, city_id: City.all.sample.id)
end