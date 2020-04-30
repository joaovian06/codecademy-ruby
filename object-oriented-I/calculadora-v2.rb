class Calculator
  def init
    print 'Type the operation you want: '
    @operation = gets.chomp
    verify_operation
  end

  private
  def verify_operation
    my_klass =
    case @operation
      when "+"
        Sum
      when "-"
        Less
      when "*"
        Mult
      when "/"
        Div
      end
    puts my_klass.new(get_num, get_num).call
  end

  def get_num
    print 'Type a number: '
    gets.chomp.to_i
  end
end

class Parameters
  def initialize(num_1, num_2)
    @num_1 = num_1
    @num_2 = num_2
  end
end

class Sum < Parameters
  def call
    @num_1 + @num_2
  end
end

class Less < Parameters
  def call
    @num_1 - @num_2
  end
end

class Mult < Parameters
  def call
    @num_1 * @num_2
  end
end

class Div < Parameters
  def call
    @num_1 / @num_2
  end
end

Calculator.new.init
