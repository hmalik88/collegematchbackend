class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

    def create
      @user = User.create(user_params)
      if @user.valid?
        render json: {user: UserSerializer.new(@user)}, status: :created
      else
        render json: {error: 'failed to create user'}, status: :not_acceptable
      end
    end

    def index
      render json: User.includes(:college_tracks), include: ['college_tracks']
    end

    def dashboard
      render json: {user: UserSeralizer.new(current_user)}, status: :accepted
    end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :e_mail, :password, :address_line_1, :address_line_2, :unit, :city, :state, :zip_code)
    end
end
