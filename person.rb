class Person
  attr_reader :name, :last_name, :salary
  def initialize name, last_name, salary
    @name = name
    @last_name = last_name
    @salary = salary
  end
end
