puts "Input a text: "
text = gets.chomp
text.downcase!

puts "Input a word: "
redact = gets.chomp
redact.downcase!



words = text.split(" ")

words.each do |placeholder|
  if redact.include? placeholder
    x = "REDACTED"
  else
    y = placeholder + " "
  end
  result = "#{x} #{y}"
  print result
end
