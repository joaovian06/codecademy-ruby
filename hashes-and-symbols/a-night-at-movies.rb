movies = {}

outputs = {
  init: "Type 'add' to add movies\nType 'update' to update your movies\nType 'display' to show your movies\nType 'delete' to delete your movies\nType 'exit' to quit\n",
  input_title: "Type a title of movie: ",
  input_rate: "Type a rating for the movie: ",
  add_fail: "Your movie already exists!",
  add_sucess: "Your movie and rating was added sucessfully!",
  update_fail: "Sorry, nothing to update!",
  update_sucess: "Your movie and rating was updated sucessfully!",
  delete_fail: "Nothing to delete!",
  delete_sucess: "Deleted sucessfully!"
}

def set_title(outputs)
  puts outputs[:input_title]
  title = gets.chomp.to_sym
end

def set_rate(outputs)
  puts outputs[:input_rate]
  rate = gets.chomp.to_i
end

def add_movie(outputs, movies, title)
  return puts output[:movie_exists] if movies.include?(title)
  movies[title] = set_rate(outputs)
  puts outputs[:add_sucess]
end

def update_movie(outputs, movies, title)
  return puts outputs[:update_fail] if movies[title].nil?
  movies[title] = set_rate(outputs)
  puts outputs[:update_sucess]
end

def delete_movie(outputs, movies, title)
  return puts outputs[:delete_fail] if movies[title].nil?
  movies.delete(title)
  puts outputs[:delete_sucess]
end

while true do
  puts outputs[:init]
  choice = gets.chomp.downcase
  case choice
    when "add" then add_movie(outputs, movies, set_title(outputs))
    when "update" then update_movie(outputs, movies, set_title(outputs))
    when "display" then movies.each {|movie, rate| puts "#{movie}: #{rate}"}
    when "delete" then delete_movie(outputs, movies, set_title(outputs))
    when "exit" then break
    else puts "Error!"
  end
end
