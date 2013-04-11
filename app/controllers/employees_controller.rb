class EmployeesController < ApplicationController
  
  def index
    @employees = Employee.all
  end
  
  def show
    @employee = Employee.find(params[:id])
  end
  
  def new
    @employee = Employee.new
    @employee.build_profile
  end
  
  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      flash[:success] = 'You created a new employee!'
      redirect_to @employee
    else
      render :new
    end
  end
  
  def edit
    @employee = Employee.find(params[:id])
    @employee.build_profile
  end
  
  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      flash[:success] = "updated employee details!"
      redirect_to @employee
    else
      render :edit
    end
  end
  
  
end
