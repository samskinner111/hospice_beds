class PublicPagesController < ApplicationController

  def about
  end

  def contact_us
  end

  def home
    if user_signed_in?
      redirect_to open_beds_path
    end 
  end

  def legal
  end

  def privacy_policy
  end

end
