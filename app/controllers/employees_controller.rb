class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all
    end

    def new 
        @emp = Employee.new
    end

    def show
        @emp = Employee.find(params[:id])
    end

    def edit
        @emp = Employee.find(params[:id])
    end

    def update
        @emp = Employee.find(params[:id])
        @emp.assign_attributes(strong_params)
        if @emp.valid?
            @emp.save
            redirect_to employee_path(@emp)
        else
            render :edit
        end
    end

    def create
        @emp = Employee.new(strong_params)
        if @emp.valid?
            @emp.save
            redirect_to employee_path(@emp)
        else
            render :new
        end
    end

    def strong_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end
end
