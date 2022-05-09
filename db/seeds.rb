# frozen_string_literal: true
# This is where you can create initial data for your app.
require 'faker'

puts 'Cleaning Database'
Restaurant.destroy_all

puts 'Creating restaurants...'

10.times do |t|
  restaurant = Restaurant.new(name: "Restaurant_#{t}", address: "Prudente de Moraes #{t + 1}, #{Faker::Movies::HarryPotter.location}")
  restaurant.save
end

puts "#{Restaurant.count} restaurants created"
