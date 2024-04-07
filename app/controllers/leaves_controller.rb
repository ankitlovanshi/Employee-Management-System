class LeavesController < ApplicationController

  def index
    @leaves = Leave.all
  end

  def show 
    @leave = Leave.find(params[:id])
  end


  def new 
    @leave = Leave.new
  end

  def create
    @leave = Leave.new(leave_params)

    if @leave.save
      redirect_to @leave
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def leave_params
    params.require(:leave).permit(:start_date, :end_date , :reason, :employee_id)
  end

end
