class UsersController < ApplicationController
  def new
    
  end

  def create
    @user = User.new(password: params[:password], username: params[:username], email: params[:email])

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
