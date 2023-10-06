#!/usr/bin/env ruby

# Get the argument from the command line
input_string = ARGV[0]

# Define the regular expression using Oniguruma syntax
regex = /School\z/

# Check if the input string matches the regex
if input_string =~ regex
  puts input_string
else
  puts "$"
end

