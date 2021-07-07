class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.includes(:user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :occupation, :position)
  end

end
