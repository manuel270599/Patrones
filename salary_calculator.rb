# salary_calculator.rb

# Interfaz para el cálculo del salario
class SalaryCalculator
    def calculate_salary(base_salary, hours_worked, scale)
    end
  end
  
  # Calculadora concreta para el salario base
  class BaseSalaryCalculator < SalaryCalculator
    def calculate_salary(base_salary, hours_worked, scale)
      base_salary * scale
    end
  end
  
  # Decorador para calcular bonos
  class BonusDecorator < SalaryCalculator
    def initialize(calculator, bonus)
      @calculator = calculator
      @bonus = bonus
    end
  
    def calculate_salary(base_salary, hours_worked, scale)
      (@calculator.calculate_salary(base_salary, hours_worked, scale) + @bonus) * scale
    end
  end
  
  # Decorador para calcular descuentos
  class DiscountDecorator < SalaryCalculator
    def initialize(calculator, discount)
      @calculator = calculator
      @discount = discount
    end
  
    def calculate_salary(base_salary, hours_worked, scale)
      (@calculator.calculate_salary(base_salary, hours_worked, scale) - @discount) * scale
    end
  end
  