class PublicPagesController < ApplicationController
  public_pages = [:about, :contact_us, :home, :legal, :privacy_policy]
  before_action :authenticate_user!, :except => public_pages

  def about
  end

  def contact_us
  end

  def home
  end

  def legal
  end

  def privacy_policy
  end

end
