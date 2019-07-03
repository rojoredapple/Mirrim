class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    respond_to do |format|
      if @user.save
        log_in @user
        flash[:success] = "Welcome to the Mirrim Smart Mirror!"
        redirect_to @user
      else
        render 'new'
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :gender, :birthday, :location,
                                   :password, :password_confirmation)
    end

end
