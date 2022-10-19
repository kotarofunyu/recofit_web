class HomeController < ApplicationController
  def top
    redirect_to training_records_path if logged_in
  end

  def about
    render layout: 'application'
  end
end
