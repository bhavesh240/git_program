module Employee
  @@total_employee = 0
  
  def initialize(id, name)
    @employee_id = id
    @employee_name = name
    @@total_employee += 1
  end

  def total_employee
    puts "total employee are : #{@@total_employee}" 
  end

  def print_detail
    puts "Customer id : #{@employee_id}"
    puts "Customer name : #{@employee_name}"
  end
end

module EmployeeSalary
  def employee_salary(salary)
    @salary = salary
    puts "Employee salary is #{@salary}"
  end
end

class EmployeeEnquiry
  include Employee
  extend EmployeeSalary
end

employee1 = EmployeeEnquiry.new(1,"bhavesh")
employee1.print_detail
EmployeeEnquiry.employee_salary(8000)

employee2 = EmployeeEnquiry.new(2,"rishabh")
employee2.print_detail
EmployeeEnquiry.employee_salary(9000)

employee3 = EmployeeEnquiry.new(3,"lakhan")
employee3.print_detail
EmployeeEnquiry.employee_salary(9000)

employee4 = EmployeeEnquiry.new(4,"sarthak")
employee4.print_detail
EmployeeEnquiry.employee_salary(12000)

employee4.total_employee