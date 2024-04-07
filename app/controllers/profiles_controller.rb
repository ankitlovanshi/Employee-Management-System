class ProfilesController < ApplicationController
  # before_action :authenticate_employee!

  def show
   @profile = current_employee
  end

  def update  
    
    @profile = current_employee.update(profile_params)
  end

  private

  def profile_params
    params.require(:employee).permit(:first_name, :last_name)
  end
  
end
