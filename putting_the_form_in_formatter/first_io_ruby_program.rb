print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "Which city are u from? "
city = gets.chomp
city.capitalize!

print "Which state/province are u from? "
state = gets.chomp
state.upcase!

print "Your name is #{first_name} #{last_name} you're from #{city} city, located at #{state} state"
