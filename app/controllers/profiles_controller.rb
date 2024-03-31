class ProfilesController < ApplicationController
  # before_action :authenticate_employee!

  def show
    debugger
   @profile = current_employee
  end

  def update
  end
end
