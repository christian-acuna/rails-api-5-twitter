module V1
  class UserSerializer < ActiveModel::Serializer
    attributes :username, :handle, :id, :avatar_url
  end
end
