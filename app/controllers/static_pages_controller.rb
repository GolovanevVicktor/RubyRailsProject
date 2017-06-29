class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def microposts
  	@micropost = current_user.microposts.build if signed_in?
  end
end
