puts "Hello there!"
greeting = gets.chomp.downcase

case greeting
  when "english" then puts "Hello!"
  when "french" then puts "Bonjour!"
  when "german" then puts "Guten tag!"
  when "finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end
