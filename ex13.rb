first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

puts "And now enter the fourth variable please: "
fourth = $stdin.gets.chomp

puts "Your fourth variable is: #{fourth}"
