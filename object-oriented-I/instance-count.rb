class Person
  @@people_count = 0


  def initialize(name)
    @name = name
    @@people_count += 1

  end

  def self.number_of_instances
    @@people_count

  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
