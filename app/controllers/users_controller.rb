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
        format.html { redirect_to @mood, notice: "You're in!" }
        #flash[:success] = "Welcome to the Mirrim Smart Mirror!"
      else
        format.html { render :new }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :gender, :day, :location,
                                   :password, :password_confirmation)
    end


def show
    @user = User.find(params[:id])
end


  
end
