class HomeController < ApplicationController
  def top
    if logged_in
      redirect_to('/records')
    end
  end
end
