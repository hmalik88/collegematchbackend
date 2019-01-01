class Api::V1::CollegesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    render json: College.includes(:users), include: ['users']
  end

end
