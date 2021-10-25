class EmployeesController < ApplicationController

    def index
        employees = Employee.all
        render json: employees
    end

    def create
        employee = Employee.create(employee_params)
        render json: employee
    end

    def show
        employee = Employee.find(params[:id])
        render json: employee
    end

    # def update
    #     employee = Employee.find(params[:id])
    #     employee.update(employee_params)
    #     render json: employee
    # end

    # def destroy
    #     employee = Employee.find(params[:id])
    #     employee.destroy
    #     render json: employee
    # end

    private
    def employee_params

    params.permit(:firstname, :lastname, :email, :phone_number, :password, :is_admin)
    end

end
