class SessionsController < ApplicationController

  def create
    user = User.find_for_database_authentication(email: params[:email])
    if user && user.valid_password?(params[:password])
      user.set_api_key!
      render json: {
        name: user.name,
        email: user.email,
        picture_url: user.picture_url,
        api_token: user.api_key
      }, status: 201
    else
      render json: { error: "User or password is invalid" }, status: 422
    end
  end

end