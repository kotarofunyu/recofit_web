class HomeController < ApplicationController
  def top
    redirect_to('/records') if logged_in
  end

  def about
  end
end
