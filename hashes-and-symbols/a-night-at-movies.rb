movies = {
  movie_1: 3,
  movie_2: 2,
  movie_3: 4
}
puts "Type anything: "
choice = gets.chomp.downcase

# x = true
# while true do
# como sair loop com true

case choice

  when "add"
    puts "Type a title of movie: "
    title = gets.chomp.to_sym

    puts "Type a rating for the movie: "
    rating = gets.chomp.to_i

    if movies[title].nil?
      movies[title] = rating
      puts "Your movie and rating was added sucessfully!"
    else
      puts "Your movie already exists!"
    end

  when "update"
    puts "Type a title of movie: "
    title = gets.chomp.to_sym

    if movies[title].nil?
      puts "Sorry, nothing to update!"
    else
      puts "Type a rating for the movie: "
      rating = gets.chomp.to_i

      movies[title] = rating
      puts "Your movie and rating was added sucessfully!"
    end

  when "display"
    movies.each {|movie, rate| puts "#{movie}: #{rate}"}

  when "delete"
    puts "Type a title of movie: "
    title = gets.chomp.to_sym

    if movies[title].nil?
      puts "Nothing to delete!"
    else movies.delete(title.to_sym)
      puts "Deleted sucessfully!"
    end

  else
    puts "Error!"
end
