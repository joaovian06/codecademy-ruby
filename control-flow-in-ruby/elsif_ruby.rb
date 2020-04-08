print "Type a number: "
num = gets.chomp

if num.to_i == 0
  print "You Typed 0!"
elsif num.to_i > 0
  print "You Typed a number larger than 0!"
else
  print "You Typed a number smaller than 0!"
end