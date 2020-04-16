#gera um array aleatorio de acordo com o length que usuario fornece
def create_arr(len)
  @my_arr = Array.new(len) {rand 1..100}
  return @my_arr
end

#ordena o array de maneira crescente
def ordering(arr, rev=false)
  arr.sort!
  if rev == true
    arr.reverse!
  else
    return arr
  end
end

#verifica se o usuario deseja reverter o array
def to_reverse?(bool)
  if bool == "1"
    return @revert = true
  #else
    #return @revert = false
  end
end

#inputs
puts "Input a number from 1 to 10: "
my_len = gets.chomp.to_i
puts "Input '1' if want reverse the array: "
my_bool = gets.chomp

#chamando metodos
create_arr(my_len)
to_reverse?(my_bool)
print ordering(@my_arr, @revert)
