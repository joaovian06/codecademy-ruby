my_array = Array.new(10) { |i| rand(1..10) }
sqrt = 0
my_array.each do |i|
  sqrt = i*i
  puts sqrt
end
