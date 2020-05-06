class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end
class Student < Person
  attr_reader :registration_num
  def initialize(name, age, registration_num)
    super(name, age)
    @registration_num = registration_num
  end
end
class Professor < Person
  attr_reader :registration_num
  def initialize(name, age, registration_num)
    super(name, age)
    @registration_num = registration_num
  end
end
class ClassRoom
  attr_accessor :class_name
  def initialize(class_name)
    @class_name = class_name
    @students = []
  end
  def add_student(name, age, registration_num)
    @students << Student.new(name, age, registration_num)
  end
  def add_professor(name, age, registration_num)
    return @professor = Professor.new(name, age, registration_num) if @professor == nil
    puts 'You already have a professor.'
  end
  def rem_student(registration_num)
    @students.delete_if {|student| student.registration_num == registration_num}
  end
  def rem_professor
    @professor = nil
  end
  def show_students
    @students.each  do |student|
      student_info = "Name: #{student.name}, Age: #{student.age}, Registration number: #{student.registration_num}\n"
      puts student_info
    end
  end
  def show_professor
    professor_info = "Name: #{@professor.name}, Age: #{@professor.age}, Registration number: #{@professor.registration_num}\n"
    return puts professor_info if @professor != nil
    puts "No professor attached to this class.\n"
  end
end
my_class_room = ClassRoom.new('Class 19')
# my_class_room.add_professor('Roberto', 34, 1)
# my_class_room.add_student('Cleber', 19, 1)
# my_class_room.add_student('João', 19, 2)
# my_class_room.add_professor('Pedro', 37, 2)
# my_class_room.show_professor
# my_class_room.show_students
