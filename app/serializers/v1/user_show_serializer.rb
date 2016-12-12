module V1
  class UserShowSerializer < ActiveModel::Serializer
    attributes :username, :handle, :id, :avatar_url, :bio
    has_many :tweets, serializer: V1::TweetSerializer
  end
end
