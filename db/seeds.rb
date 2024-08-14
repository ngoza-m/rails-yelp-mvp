# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

urban_yard = { name: 'Urban Yard', address: '567 Lusiwasi Rd', phone_number: '0761955737', category: 'french' }
botanica = { name: 'Botanica', address: 'Ngwerere Road Bonanza Estate Ciêla Resort & Spa', phone_number: '0764855737', category: 'italian' }
marlin = { name: 'Marlin', address: '#3 Arcades Area', phone_number: '0964855737', category: 'japanese' }
mint_lounge = { name: 'Mint Lounge', address: 'East Park Mall', phone_number: '0954855737', category: 'chinese' }


[urban_yard, botanica, marlin, mint_lounge].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
