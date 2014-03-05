stupid_things = ''

print "Say something stupid."
input = gets.chomp
stupid_things << input
puts "\n You said these stupid things:"
stupid_things.each do |dumb|
  puts dumb
end
