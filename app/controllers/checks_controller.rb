class ChecksController < ApplicationController
  def create
    @check = Check.new(check_params)
    @check.save

    redirect_to home_index2_path
  end

  private 

  def check_params
    params.require(:check).permit(:first, :second, :third)
  end
  
end
