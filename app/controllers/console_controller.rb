class ConsoleController < ApplicationController
  #before_action :authenticate_user!

  def index
    # user is already logged in, get user
    @user = current_user
    if @user == nil
      redirect_to user_session_path
    else
      # get user hospice
      @hospice = @user.hospice
      @beds = Bed.get_my_beds(@hospice.id)
      puts @beds
    end
  end
end