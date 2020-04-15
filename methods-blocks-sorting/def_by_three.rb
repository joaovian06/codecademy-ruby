def by_three?(num)
  test = num%3
  if test == 0
    assign = true
  else
    assign = false
  end
  return assign
end

puts "Input a number: "
num = gets.chomp.to_i

puts by_three?(num)
