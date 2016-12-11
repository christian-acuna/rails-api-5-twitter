module V1
  class TweetsSerializer < ActiveModel::Serializer
    attributes :content, :created_at, :id
    has_one :author, serializer: V1::UserSerializer
    has_many :hashtags, serializer: V1::HashTags
  end
end
