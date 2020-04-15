#criando meu array
puts "Type a integer number: "
my_length = gets.chomp.to_i
my_array = Array.new(my_length) {rand (1..100)}

#percorrendo cada index do array
count = 0
for i in 0..(my_length - 1) do
  print "#{my_array} \n"
  #puts "#{my_length}\n"

  for j in 0..(my_length - i - 1) do
  #my_array.each_with_index do |object, index|

    object = my_array[j]
    object_2 = my_array[j + 1]
    count += 1




    if (object_2 != nil) && (object > object_2)
      my_array[j] = object_2
      my_array[j + 1] = object

    end

  end

end


puts "Quantidade de iteracoes: #{count}"
