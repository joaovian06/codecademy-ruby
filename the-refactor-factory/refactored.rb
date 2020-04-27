require 'prime'

def first_n_primes(n)
    return "n must be an integer." unless n.is_a? Integer
    return "n must be greater than 0." if n <= 0
    Prime.first n
end

while true do
  puts "Type an positive integer value: "
  my_num = gets.chomp.to_i

  puts first_n_primes(my_num)
end
