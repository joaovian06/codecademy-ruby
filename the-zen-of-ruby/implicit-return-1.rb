def to_square(num)
  num**2
end

puts "Type a number: "
my_num = gets.chomp.to_i

puts to_square(my_num)
