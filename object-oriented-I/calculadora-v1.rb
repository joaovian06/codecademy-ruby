
class Calculator
  def init
    print 'Type a number: '
    @num_1 = gets.chomp.to_i

    print 'Type another number: '
    @num_2 = gets.chomp.to_i

    print 'Type the operation you want: '
    @operation = gets.chomp

    #verifica_operacao(operation)
  end

  def verifica_operacao#(operation)
    case @operation

    when "+"
      my_calc = Sum.new(@num_1, @num_2)
      puts my_calc.soma
    when "-"
      my_calc = Less.new(@num_1, @num_2)
      puts my_calc.subtrai
    when "*"
      my_calc = Mult.new(@num_1, @num_2)
      puts my_calc.multiplica
    when "/"
      my_calc = Div.new(@num_1, @num_2)
      puts my_calc.divide
    end
  end
end

class Sum
  def initialize(num_1, num_2)
    @num_1 = num_1
    @num_2 = num_2
  end

  def soma
    @num_1 + @num_2
  end
end

class Less
  def initialize(num_1, num_2)
    @num_1 = num_1
    @num_2 = num_2
  end

  def subtrai
    @num_1 - @num_2
  end
end

class Mult
  def initialize(num_1, num_2)
    @num_1 = num_1
    @num_2 = num_2
  end

  def multiplica
    @num_1 * @num_2
  end
end

class Div
  def initialize(num_1, num_2)
    @num_1 = num_1
    @num_2 = num_2
  end

  def divide
    @num_1 / @num_2
  end
end

my_calc = Calculator.new
my_calc.init
my_calc.verifica_operacao
