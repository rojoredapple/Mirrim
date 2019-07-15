class UsersController < ApplicationController
    def show
    @user = User.find_by(id: session[:user_id])
    @mantra = @user.mantras
  end


  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    #respond_to do |format|
      if @user.save
        log_in @user
        redirect_to root_path
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
