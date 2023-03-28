# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# static data
NAMES = [
  "Arjun", "Aum", "Ishan", "Krish", "Moksh", "Rishi", "Veer"]

LOCATIONS_HASH = [
  { name: "Mumbai", state: "Maharashtra" },
  { name: "Delhi", state: "Delhi" },
  { name: "Bangalore", state: "Karnataka" },
  { name: "Hyderabad", state: "Telangana" },
  { name: "Ahmedabad", state: "Gujarat" },
  { name: "Chennai", state: "Tamil" },
  { name: "Kolkata", state: "West" },
  { name: "Surat", state: "Gujarat" },
  { name: "Pune", state: "Maharashtra" },
  { name: "Jaipur", state: "Rajasthan" },
]

# creates durations
Duration.create({ time: "15 min", price: 100 })
Duration.create({ time: "30 min", price: 180 })
Duration.create({ time: "45 min", price: 250 })
Duration.create({ time: "1 hour", price: 300 })

# creates locations
LOCATIONS_HASH.each do |l|
  Location.create({ name: l[:name], state: l[:state] })
end

NAMES.each_with_index do |customer_name, index|
  Customer.create({ name: customer_name, email:"user-#{index}@gmail.com",phone:"1234567890" })
end

locations = Location.all
durations = Duration.all
customers = Customer.all

locations.each do |l|
  random_duration = durations.sample
  Booking.create({ location: l.name, status:"Active", duration: random_duration.time, price: random_duration.price, customer_id: customers.sample.id })
end
