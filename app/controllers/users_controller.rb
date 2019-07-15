class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy

  def index
    @users = User.where(activated: true).paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
=======
    def show
    @user = User.find_by(id: session[:user_id])
    @mantra = @user.mantras
  end


  def index
    @user = User.all
>>>>>>> d4f2d9d4888103543f3513dfd48bb21b4c1b005a
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

<<<<<<< HEAD
    if @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile Updated"
      redirect_to @user
    else
      render 'edit'
    end
=======
    #respond_to do |format|
      if @user.save
        log_in @user
        redirect_to root_path
      else
        render :new
      end
>>>>>>> d4f2d9d4888103543f3513dfd48bb21b4c1b005a
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User Deleted"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :gender, :day, :location,
                                   :password, :password_confirmation)
    end

<<<<<<< HEAD
    # Confirms a Logged-In User
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please Log In"
        redirect_to login_url
      end
    end

    # Confirms a Correct User
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # Confirms an Admin User
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
=======

  
>>>>>>> d4f2d9d4888103543f3513dfd48bb21b4c1b005a
end
