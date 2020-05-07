class Account
  attr_reader :name, :balance
  def initialize(name, balance=0)
    @name = name
    @balance = balance
  end
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  def deposite(value, pin_number)
    pin_number == pin ? @balance += value : pin_error
  end
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  private
  def pin
    @pin = 1234
  end
  def pin_error
    puts "Access denied: incorrect PIN."
  end
end
my_account = Account.new("Joao")
my_account.display_balance(1234)
my_account.deposite(500, 12)
my_account.display_balance(1234)
