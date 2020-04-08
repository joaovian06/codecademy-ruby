print "Type a number: "
num_a = gets.chomp

print "Type other number: "
num_b = gets.chomp

class String
  def is_number?
    true if Float(self) rescue false
  end
end

if num_a.is_number? && num_b.is_number?
  if num_a < num_b
    print "The first number is less than second one!"
  elsif num_a > num_b
    print "The first number is greater than second one!"
  elsif num_a == num_b
    print "The numbers you typed are equals!"
  end
else

=begin
  print "Do you typed a number?(Y/N) "
  x = gets.chomp
  if x == "Y"
    print "Please type again! "
    #restart application
  else
    print "Bad Lucky!"
=end

end