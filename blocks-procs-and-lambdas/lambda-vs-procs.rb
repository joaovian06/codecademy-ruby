def batman_ironman_proc
  victor = Proc.new { return "Batman will win! 0" }
  victor.call
  "Iron Man will win! 0"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win! 1" }
  print victor.call
  "Iron Man will win! 1"
end

puts batman_ironman_lambda
