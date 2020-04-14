#criando meu array
puts "Type a integer number: "
my_length = gets.chomp
my_array = Array.new(my_length.to_i) {rand (1..100)}

#percorrendo cada index do array
for i in 0..my_array.length do
  print "#{my_array} \n"
  my_array.each_with_index do |object, index|
    object_2 = my_array[index + 1]

    if (object_2 != nil) && (object > object_2)
      my_array[index] = object_2
      my_array[index + 1] = object
    end
  end
end
