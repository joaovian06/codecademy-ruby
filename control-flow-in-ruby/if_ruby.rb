print "Type your name: "
name = gets.chomp

if name.to_i == 0 
	print "Your name is a string!"
else 
	print "Your name isn't a string!"
end