class ConsoleController < ApplicationController
  before_action :authenticate_user!, except: :open_beds

  def open_beds
    @open_beds = Bed.where(status: 'open')
    puts @open_beds
  end
end