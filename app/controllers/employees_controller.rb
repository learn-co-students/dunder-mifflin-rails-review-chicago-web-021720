class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        find_employee
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def edit
        find_employee
        @dogs = Dog.all
    end

    def create
        @dogs = Dog.all
        @employee = Employee.new(employee_params)
        if @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            render :new
        end
    end

    def update
        @dogs = Dog.all
        find_employee
        @employee.update_attributes(employee_params)
        if @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            render :edit
        end
    end


    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :dog_id, :img_url)
    end
end
