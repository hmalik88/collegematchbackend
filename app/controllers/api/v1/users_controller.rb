class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

    def index
      render json: User.includes(:colleges), include: ['colleges']
    end

end
