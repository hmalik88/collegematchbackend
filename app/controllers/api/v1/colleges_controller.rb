class Api::V1::CollegesController < ApplicationController

  def index
    render json: College.includes(:users), include: ['users']
  end

end
