from_file, to_file = ARGV ; open(to_file, 'w') { |f| f.write (File.read(from_file)) } ; puts "Successfully copied from #{from_file} to #{to_file}."
