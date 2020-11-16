!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'luggage'
require_relative 'rental'

items = [:apple, :water, :protein_bar]

bike = Bike.new(id: 1, color: :pink, price: 99.99)

luggage = Luggage.new(items: items)

rental = Rental.new(bike: bike, luggage: luggage)

puts "Total Price: #{rental.price(bike_price: bike.price, bike_weight: bike.weight, luggage_weight: luggage.weight)}, Total Weight: #{rental.weight(bike_weight: bike.weight, luggage_weight: luggage.weight)}"
