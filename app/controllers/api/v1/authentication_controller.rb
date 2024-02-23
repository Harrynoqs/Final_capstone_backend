class Api::V1::AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token
  def login
    user = User.find_by(name: params[:name])

    if user 
      token = user.generate_jwt
      render json: { user_id: user.id, name: user.name, token: token }, status: :created
    else
      head :unauthorized
    end
  end
end
