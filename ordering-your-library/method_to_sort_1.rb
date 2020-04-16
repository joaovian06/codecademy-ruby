#gera um array aleatorio de acordo com o length que usuario fornece
def create_arr(len)
  @my_arr = Array.new(len) {rand 1..100}
  # Por padrão os métodos em ruby retornam o valor da última expressão, sendo assim não precisa colocar returna na última linha
  # Caso não haja valor retorna-se nil
  @my_arr
end
#ordena o array de maneira crescente
def ordering(arr, rev=false)
  arr.sort!
  arr.reverse! if rev == true # utilizar o if inline é bem comum, e tbm economiza-se linhas de código
  # Como o array é sempre alteraddo com o bang (!) podemos retornar apenas o valor do arr no final
  # Perceba que não foi utilizado o "return", pois os métodos em Ruby sempre retornam o valor da última expressão
  arr
end
#verifica se o usuario deseja reverter o array
def to_reverse?(bool)
  bool == "1" # retorna o valor da expressão
end
#inputs
puts "Input a number from 1 to 10: "
my_len = gets.chomp.to_i
puts "Input '1' if want reverse the array: "
my_bool = gets.chomp
#chamando metodos
create_arr(my_len)
# como o método to_reverse? retorna o valor da expressão podemos atribuir esse valor a uma variável
# O outro modo funciona tbm, mas veja como eliminamos do método um if e else.
reverse_bool = to_reverse?(my_bool)
print ordering(@my_arr, reverse_bool)
