print "Do you have a problem? (Y/N): "
problem = gets.chomp

#Checking problem
unless problem == "N"
  print "Good to go!"
else
  print "Bad Lucky!"
end