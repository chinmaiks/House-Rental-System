class HomeController < ApplicationController
  def index
  end

  def switchprofile
    if session[:role]=='realtor'
      session[:role] = 'househunter'
    else
      session[:role] = 'realtor'
    end
    redirect_to root_path, notice: 'Switched Profile Sucessfully.'
  end
end
