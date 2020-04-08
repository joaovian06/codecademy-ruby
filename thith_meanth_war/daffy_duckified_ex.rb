print "Input a thtring: "
user_input = gets.chomp

until user_input.length>0
  print "Input a thtring: "
  user_input = gets.chomp
end

if (user_input.include? "s") || (user_input.include? "S")
  user_input.gsub!(/[sS]/, "s" => "th", "S" => "Th") #&& user_input.gsub!(/[S]/, "Th")

else
  print "No 's' in the thtring"
end

puts "Your thring is '#{user_input}'"