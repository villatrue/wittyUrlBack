class UserSerializer < ActiveModel::Serializer
  has_many :userlinks
  has_many :baselinks, through: :userlinks

  attributes :id, :username
end
