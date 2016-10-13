class PublicPagesController < ApplicationController

  def about
  end

  def contact_us
  end

  def home
    puts "PARAMS"
    puts params.inspect
    @beds = Bed.all
  end

  def legal
  end

  def privacy_policy
  end

end