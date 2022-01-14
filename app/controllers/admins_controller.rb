class AdminsController < ApplicationController
  def approvals
    @users = User.where(approved: false)
  end

  def approve_account
    @user = User.find(params[:id])
    @user.approved = params[:approve]

    if @user.save
      redirect_to admins_approvals_path
    else
      redirect_to admins_approvals_path
    end
  end

  def user_accounts
    @users = User.all
  end

  def show_user
    @user = User.find(params[:id])
  end

  def edit_user
    @user = User.find(params[:id])
  end

  def modify_user
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:firstname, :lastname, :country, :email))

    if @user.update(params.require(:user).permit(:firstname, :lastname, :country, :email))
      redirect_to admins_user_accounts_path
    else
      render :modify_user, status: :unprocessable_entity
    end
  end

  def add_user
    @user = User.new
  end

  def create_user
    @user = User.new(params.require(:user).permit(:firstname, :lastname, :country, :email, :password))
    @user.approved = true
    @user.save

    if @user.save
      redirect_to admins_user_accounts_path
    else
      redirect_back fallback_location: admins_add_user_path
    end
  end
end