def double(number)
  yield(number)
end

puts "Input a number: "
my_num = gets.chomp.to_i

double(my_num){|n| puts n * 2}
