class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = UserService.getAllUsers
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    @is_user_create = UserService.createUser(@user)
    logged_in_user = User.find_by(id: session[:user_id])

    if @is_user_create
      UserMailer.with(user: @user, logged_in_user: logged_in_user).send_mail.deliver_now
      redirect_to users_path, notice: "User Created successfully and sent mail to the User"
    else
      render :new, notice: "Failed to create"
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    @is_user_update = UserService.updateUser(@user, user_params)

    if @is_user_update
      redirect_to users_path, notice: "User was successfully updated"
    else
      render :edit, notice: "Unable to update"
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    UserService.destroyUser(@user)
    redirect_to users_path, notice: "Deleted User Successfully"
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :super_user_flag, :phone, :address, :birthday)
  end
end
