module V1
  class UserSerializer < ActiveModel::Serializer
    attributes :username, :handle, :id
  end
end
