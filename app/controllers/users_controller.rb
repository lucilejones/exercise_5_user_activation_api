class UsersController < ApplicationController
  def index
    users = User.all

    render json: users, status: 200
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
        render json: user, status: :ok
    else
        render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :active)
  end 
end
