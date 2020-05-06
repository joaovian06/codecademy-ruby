class Person
attr_reader :name
attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end
