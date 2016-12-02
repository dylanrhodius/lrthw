# declare variable "filename" and make it equalto the first and only parameter,
# which is entered by the user on the command line, this parameter is actually
# the name of the text file created in the directory
filename = ARGV.first

# declare variable "txt" and make it equal to carrying out an open function on
# the variable "filename"
txt = open(filename)

# puts a string indicating the name of the file (ex15_sample.txt)
puts "Here's your file #{filename}:"

# puts the result of carrying out the read function on the variable txt (which
# was opening the file in the directory)
puts txt.read

txt.close()

# print out a string suggesting the user to enter the name of the file zhe wants
# to open (in this case it will be "ex15_sample.txt")
print "Type the filename again: "

# set the user's input (the file name) equal to a variable called "file_again"
#so ruby can perform functions on it
file_again = $stdin.gets.chomp

# perform the open function on "file_again" and set that result equal to a
# variable called "txt_again"
txt_again = open(file_again)

# puts the result of performing the function read on the variable "txt_again"
puts txt_again.read

txt_again.close()
