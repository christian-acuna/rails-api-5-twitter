module V1
  class TweetsController < ApplicationController
    def recent
      tweets = Tweet.ordered_json
      render json: tweets, each_serializer: TweetsSerializer
    end

    def search
      #code
    end

    def create
      #code
    end
  end
end
