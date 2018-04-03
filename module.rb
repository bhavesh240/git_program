module Employee
  module EmployeeDetail
    @@total_employee = 0

    def employee_detail(id, name) #Instance Method
      @employee_id = id
      @employee_name = name
      @@total_employee += 1
    end

    def print_employee_detail #Instance Method
      puts "Employee Id : #{@employee_id}"
      puts "Employee Name : #{@employee_name}"
    end

    def employee_salary(salary) #Instance Method
      puts "Salary of #{@employee_name} is #{salary}"
    end

    def total_employee #Instance Method
      puts "Total Employee working in the Company #{@@total_employee}"
    end
  end  #end of Module EmployeeDetail 

    def self.included(base)  # Class Method
      base.extend(EmployeeDetail) 
    end
end # end of Module Employee

class Company  #Main Class
  include Employee
end #Main class end

Company.employee_detail(1,"bhavesh")
Company.print_employee_detail
Company.employee_salary(20000)
Company.total_employee

Company.employee_detail(2,"rishabh")
Company.print_employee_detail
Company.employee_salary(120254)
Company.total_employee

Company.employee_detail(3,"lakhan")
Company.print_employee_detail
Company.employee_salary(10000)
Company.total_employee

Company.employee_detail(4,"sarthak")
Company.print_employee_detail
Company.employee_salary(125403)
Company.total_employee