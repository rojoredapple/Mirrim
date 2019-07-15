class UsersController < ApplicationController
  def show
    @user = User.first

  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    #respond_to do |format|
      if @user.save
        #log_in @user
        redirect_to @mantra
      else
        render :new
      end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :gender, :day, :location,
                                   :password, :password_confirmation)
    end


  
end
