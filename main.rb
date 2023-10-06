# main.rb
require_relative 'employee'
require_relative 'department'

# Crear empleados con salario base
employee1 = Employee.new("David", "Desarrollador", 60000, 40, 1)
employee2 = Employee.new("Eva", "Diseñadora", 55000, 40, 1)

# Crear un departamento y agregar empleados
department = Department.new("Departamento de TI", 0, 0, 1)
department.add_subordinate(employee1)
department.add_subordinate(employee2)

# Aplicar un bono de al departamento
department.salary_calculator = BonusDecorator.new(department.salary_calculator, 10000)

# Mostrar información del departamento con bono
department.display_info

# Calcular el salario total del departamento (salarios base + bono)
puts "Salario total del departamento (salarios base + bono): #{department.calculate_total_salary}"
