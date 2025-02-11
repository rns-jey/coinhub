class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to adminpanel_path
    else
      render 'edit'
    end
  end

    private
      def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :approved)
      end
end