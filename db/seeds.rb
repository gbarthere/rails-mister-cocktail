require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient_list = JSON.parse(ingredient_serialized)
ingredient = ingredient_list["drinks"]

ingredient.each do |ing|
  Ingredient.create(name: ing["strIngredient1"])
end