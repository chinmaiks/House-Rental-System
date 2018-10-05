class UserController < ApplicationController
  def index
    @users = User.all
  end

  def delete
    User.find(params[:id]).destroy
    #flash[:success] = "User destroyed."
    redirect_to user_index_path
  end

end
