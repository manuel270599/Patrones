#Patrones
La aplicación en su conjunto se enfoca en la administración de departamentos en una empresa, utilizando patrones de diseño para mejorar la flexibilidad y extensibilidad del sistema.

Patrón Composite: El patrón composite se emplea para crear estructuras jerárquicas de departamentos y empleados. Esto permite organizar los empleados en departamentos y a su vez, agrupar departamentos en otros departamentos.

Patrón Decorator: El patrón decorator se aplica para agregar funcionalidades adicionales, como bonos o descuentos, a los empleados de sus respectivos departamentos. Esto permite modificar el salario de un empleado sin afectar a otros componentes del sistema.

Patrón Strategy: El patrón strategy se utiliza para definir diferentes estrategias de cálculo de salario. La estrategia base calcula el salario multiplicando la escala por el salario base. Sin embargo, cuando se aplican bonos o descuentos, se utilizan estrategias diferentes, como sumar el bono antes de la multiplicación o restar el descuento después de la multiplicación