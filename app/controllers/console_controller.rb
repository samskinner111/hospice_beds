class ConsoleController < ApplicationController
  #before_action :authenticate_user!

  def open_beds
    # user is already logged in, get user
    @user = current_user
    if @user == nil
      redirect_to user_session_path
    else
      # get user hospice
      # @hospice = @user.hospice_id
      # @beds = Bed.get_my_beds(@hospice)
      @open_beds = Bed.where(status: 'open')
      puts @open_beds
    end
  end
end