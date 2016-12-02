# sets string variable formatter with value as seen below
formatter = "%{first} %{second} %{third} %{fourth}"

# puts string formatter, giving integer values for each part of the formatter
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}

# puts string formatter, giving string values for each part of the formatter
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}

# puts string formatter, giving boolean values for each part of the formatter
puts formatter % {first: true, second: false, third: true, fourth: false}

#puts string formatter, giving the full string value of formatter for each part of the formatter
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# puts string formatter, giving string values for each part of the formatter
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
