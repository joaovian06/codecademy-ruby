strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each do |s|
  control = s.to_sym
  symbols.push(control)
end
print symbols
