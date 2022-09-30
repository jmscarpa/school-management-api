class StatusController < ApplicationController
  def index
    render json: {
      name: 'Courses API',
      status: :ok
    }
  end
end