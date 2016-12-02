filename = ARGV.first

puts "We're going to read #{filename}"
puts "Opening the file..."
target = open(filename)

puts "If you want to me to read and display the file press enter."
$stdin.gets

puts target.read
puts ""

puts "And finally, we close it."
target.close
