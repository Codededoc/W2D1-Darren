class Employee

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end

end


class Manager < Employee

  def initialize
    @employees = []
  end

end


ned = Manager.new("Ned", "Founder", 1_000_000, nil)
darren = Manager.new("Darren", "TA Manager", 78_000, Ned)
shawna = Employee.new("Shawna", "TA", 12_000, Darren)
david = Employee.new("David", "TA", 10_000, Darren)

puts david.bonus
