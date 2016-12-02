# set variable input_file equal to the first argument passed to the script
input_file = ARGV.first

# create a function called prin_all with variable f included
# then read contents of variable f as file and return as string to terminal
# via puts

def print_all(f)
  puts f.read
end

# create a function called rewind with variable f included
# then seek to position 0 of variable f

def rewind(f)
  f.seek(0)
end

# create a function called print_a_line whith variables line_count and f
# puts a string which contains the value of line_count, plus gets the contents
# of variable f and then prints it out

def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# open variable input_file (which was set equal to the argument passed by user,
# which in this case will be the test.txt file) and set that equal to
# current_file

current_file = open(input_file)

# puts string and leaves a blank line below

puts "First let's print the whole file:\n"

# calls function print_all and gives it current_file (in this case test.txt)
# as a parameter

print_all(current_file)

# puts string

puts "Now let's rewind, kind of like a tape."

# calls function rewind and gives it current_file (in this case test.txt)
# as a parameter

rewind(current_file)

# puts string

puts "Let's print three lines:"

# sets a new variable current_line equal to 1
# then calls print_a_line function and gives it parameters current_line (1) and
# current_file (test.txt)
                                          # current line does not exist yet
current_line = 1                           # current line = 1 here
print_a_line(current_line, current_file)

# sets a new variable current_line equal to current value + 1
# then calls print_a_line function and gives it parameters current_line (2) and
# current_file (test.txt)

current_line += 1             # current line = 2 here
print_a_line(current_line, current_file)

# sets a new variable current_line equal to current value + 1
# then calls print_a_line function and gives it parameters current_line (3) and
# current_file (test.txt)

current_line += 1             # current line = 3 here
print_a_line(current_line, current_file)
