# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Seed fruits data
fruits_data = [
  { name: "Apple", color: "Red" },
  { name: "Banana", color: "Yellow" },
  { name: "Orange", color: "Orange" },
  { name: "Grape", color: "Purple" },
  { name: "Strawberry", color: "Red" },
  { name: "Blueberry", color: "Blue" },
  { name: "Lemon", color: "Yellow" },
  { name: "Lime", color: "Green" },
  { name: "Cherry", color: "Red" },
  { name: "Peach", color: "Orange" }
]

fruits_data.each do |fruit_attrs|
  Fruit.find_or_create_by!(name: fruit_attrs[:name]) do |fruit|
    fruit.color = fruit_attrs[:color]
  end
end

puts "Seeded #{Fruit.count} fruits"
