# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Seed - create ingredients from URL"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
results = Net::HTTP.get(URI(url))
parsed_results = JSON.parse(results)
parsed_results["drinks"].each do |ingredient|
  ingredient = Ingredient.create(name: ingredient['strIngredient1'])
  puts ingredient.name
end


puts "seeding done"
