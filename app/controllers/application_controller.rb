class ApplicationController < ActionController::API

  def current_user
    current_user ||= User.find_by(api_key: request.headers['Authorization'])
  end

  def authenticate!
    render json: { error: 'Access Denied' }, status: 401 unless current_user
  end

end
