# employee.rb
require_relative 'salary_calculator'

# Clase Employee que utiliza el patrón decorador
class Employee
  attr_reader :name, :title, :base_salary, :hours_worked, :scale
  attr_accessor :salary_calculator

  def initialize(name, title, base_salary, hours_worked, scale, salary_calculator = BaseSalaryCalculator.new)
    @name = name
    @title = title
    @base_salary = base_salary
    @hours_worked = hours_worked
    @scale = scale
    @salary_calculator = salary_calculator
  end

  def display_info(indentation = "")
    puts "#{indentation}#{name}, #{title}, Salary: #{calculate_total_salary}"
  end

  def calculate_total_salary
    salary_calculator.calculate_salary(base_salary, hours_worked, scale)
  end
end
