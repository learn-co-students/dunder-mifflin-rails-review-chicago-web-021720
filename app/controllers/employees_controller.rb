class EmployeesController < ApplicationController

    def index
        set_all_employees
    end

    def show
        set_employee_by_id
    end

    def new
        @employee = Employee.new
        set_all_dogs
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employee_path(@employee)
        else
            @errors = @employee.errors.full_messages
            set_all_dogs
            render :new
        end
    end

    def edit
        set_employee_by_id
        set_all_dogs
    end

    def update
        set_employee_by_id
        @employee.assign_attributes(employee_params)
        if @employee.save
            redirect_to employee_path(@employee)
        else
            @errors = @employee.errors.full_messages
            set_all_dogs
            render :edit
        end
    end

    def destroy
        set_employee_by_id
        @employee.destroy
        redirect_to employees_path
    end

    private

    def set_employee_by_id
        @employee = Employee.find(params[:id])
    end

    def set_all_employees
        @employees = Employee.all
    end

    def set_all_dogs
        @dogs = Dog.all
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

end
