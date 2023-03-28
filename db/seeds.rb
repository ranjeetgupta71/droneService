# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do |n|
  Customer.create({ name: "Customer #{n}",email:"abc-#{n}@gmail.com",phone:"123" })
end

20.times do |n|
  Booking.create({ location: "Location #{n}",status:"Active",duration:"10 min",price: "50" })
end

20.times do |n|
  Location.create({ name: "Ajmer", state: "Rajasthan"})
end

Duration.create({ time: "15 min",price: "$100" })
Duration.create({ time: "30 min",price: "$180" })
Duration.create({ time: "45 min",price: "$250" })
Duration.create({ time: "1 hour",price: "$300" })
