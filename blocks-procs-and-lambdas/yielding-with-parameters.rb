def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield("joao")
  puts "Block complete! Back in the method.\n"
end

yield_name("Eric") {|n| puts "My name is #{n}."}
yield_name("joao") {|n| puts "My name is #{n}."}
