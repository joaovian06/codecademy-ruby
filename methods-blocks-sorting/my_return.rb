def my_return(my_string)
  return "#{my_string} RETURNED "
end

puts "Type a text: "
my_string = gets.chomp
puts my_return(my_string)
