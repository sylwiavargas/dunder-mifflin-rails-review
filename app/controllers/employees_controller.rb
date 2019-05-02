class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_param)
    if @employee.valid?
      redirect_to @employee
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_param)
    if @employee.valid?
      redirect_to @employee
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.destroy(params[:id])
    redirect_to employees_path
  end


  private

  def employee_param
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

end
