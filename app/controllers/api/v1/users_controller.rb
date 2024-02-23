class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @user = User.new(user_params)

    if @user.save
      token = @user.generate_jwt
      @user.update(jwt_token: token)
      render json: { token: token }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name) if params[:user].present?
  end
end
