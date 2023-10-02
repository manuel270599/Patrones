# department.rb
require_relative 'salary_calculator'

# Clase Department (composite)
class Department < Employee
  def initialize(name, base_salary, hours_worked, scale, salary_calculator = BaseSalaryCalculator.new)
    super(name, "Department", base_salary, hours_worked, scale, salary_calculator)
    @subordinates = []
  end

  def add_subordinate(subordinate)
    @subordinates << subordinate
  end

  def remove_subordinate(subordinate)
    @subordinates.delete(subordinate)
  end

  def display_info(indentation = "")
    puts "#{indentation}#{name}, #{title}, Salary: #{calculate_total_salary}"
    @subordinates.each { |subordinate| subordinate.display_info(indentation + "  ") }
  end

  def calculate_total_salary
    total_salary = base_salary * scale
    @subordinates.each do |subordinate|
      total_salary += subordinate.calculate_total_salary
    end
    total_salary
  end
end
