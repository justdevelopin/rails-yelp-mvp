# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french"}
shrooms = {name: "Shrooms", address: "Shumbul tala 1010", category: "french"}
brooms =  {name: "Brooms", address: "Koskhole bikas 4343", category: "french"}
beastro = {name: "Beastro", address: "7 Boundary St, America E2 2", category: "french"}
pizza_feasts =  {name: "Pizza Feasts", address: "56A Shoreditch Low St, BibuBOOb E1 haha", category: "french"}

[dishoom, pizza_east, shrooms, brooms, beastro, pizza_feasts].each do |attr|
  Restaurant.create(attr)
end
