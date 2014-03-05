require 'csv'
require 'pry'

stupid_things = []

puts "Say something stupid."
input = gets.chomp
sleep(1)

CSV.open("stupid_stuff.csv", "ab") do |dumber|
  dumber << [input]
end
CSV.foreach("stupid_stuff.csv") do |dumb|
  stupid_things << dumb
end

puts "\nYou said these stupid things:"
stupid_things.each {  |dumb| puts dumb  }
puts "\n"

value = rand(1..3)
if value == 3
  puts "What have you been smoking?..\n"
elsif value == 2
  puts "You should see a doctor..\n"
elsif value == 1
  puts "You have a problem..\n"
end


