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
        format.html { redirect_to root_path, notice: "Account was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :gender, :birthday, :location,
                                 :password, :password_confirmation)
    end

end
