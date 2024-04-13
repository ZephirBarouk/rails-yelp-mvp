puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"0630835110", category:"belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"0630142307", category:"italian"}
tokyo_store = {name: "Tokyo Store", address: "3782 Saint Laurent St, Montreal", phone_number:"0630912649", category:"japanese"}
bangali = {name: "Bangali", address: "4422 Saint Denis St, Montreal", phone_number:"0630461867", category:"chinese"}
chez_arthur = {name: "Chez Arthur", address: "1222 Berri Uqam St, Montreal", phone_number:"0630992238", category:"french"}

[dishoom, pizza_east, tokyo_store, bangali, chez_arthur].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
