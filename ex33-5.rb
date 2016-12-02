def counter()
  i = 0
  numbers = []

(i..@input2).each do
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
  puts
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each do |num|
  puts num
end

end

puts "Do you want to count for you?"
input = gets.chomp.downcase

if input == "yes"
  puts "Until what number?"
  @input2 = gets.chomp.to_i
  counter
elsif input == "no"
  puts "Okay, thank you!"
else
  puts "Sorry I did not understand that, good bye!"
end
