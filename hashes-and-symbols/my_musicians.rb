my_musicians = {
  jimi: 5,
  hank_crawford: 10,
  djavan: 25
}

my_favorites = my_musicians.select{|name,  discs| discs > 9}
puts my_favorites

list_of_all = my_musicians.each_key{|name| puts name}
all_discs = my_musicians.each_value{|discs| puts discs}
