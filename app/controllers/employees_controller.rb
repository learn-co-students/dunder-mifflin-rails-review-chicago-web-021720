class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end 

    def show
        find_employee
    end 

    def new
        @employee = Employee.new
    end 

    def create
        @employee = Employee.new(employee_params)
        if @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            @errors = @employee.errors.full_messages
            render :new
        end 
    end

    def edit
        find_employee
    end 

    def update
        find_employee.assign_attributes(employee_params)
        if find_employee.save
            redirect_to employee_path(@employee)
        else
            @errors = @employee.errors.full_messsages
            render :edit 
        end   
    end 

 
    
    private
    def find_employee
        @employee = Employee.find(params[:id])
    end 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end 


end
 