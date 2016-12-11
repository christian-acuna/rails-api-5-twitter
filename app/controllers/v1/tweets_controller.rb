module V1
  class TweetsController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:recent]
    def recent
      tweets = Tweet.ordered_json
      render json: tweets, each_serializer: TweetSerializer
    end

    def search
      #code
    end

    def create
      #code
    end
  end
end
