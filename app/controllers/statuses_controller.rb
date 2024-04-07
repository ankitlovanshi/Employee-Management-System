class StatusesController < ApplicationController
  def index
  @status = Status.all
  end 

  def show 
    @status = Status.find(params[:id])
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.create(status_params)

    if @status.save
      redirect_to @status
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def status_params
    params.require(:status).permit(:date, :status, :employee_id)
  end

end
