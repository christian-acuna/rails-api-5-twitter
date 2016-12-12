module V1
  class UsersController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:show]

    def show
      user = User.find(params[:id])
      render json: user, serializer: UserShowSerializer
    end
  end
end
