def greeter(name)
  pattern = puts "Hello, nice to meet you #{name}!"
  return pattern
end

puts "Input your name: "
name = gets.chomp
10.times{greeter(name)}
