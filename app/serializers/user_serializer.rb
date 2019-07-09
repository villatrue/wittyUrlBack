class UserSerializer < ActiveModel::Serializer
  has_many :userLinks
  has_many :baseLinks, through: :userLinks

  attributes :id, :username
end
