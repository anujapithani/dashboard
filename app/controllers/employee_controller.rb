class EmployeeController < ActionController::Base
    def index
    @employees = Employee.all
    end
    def new
        @employee = Employee.new
    end
    def create
        employee = Employee.new(employee_params)
        employee.save 
        redirect_to root_path
    end  
    private
    def employee_params
        params.require(:employee).permit(:name, :email, :empid)
    end
end
