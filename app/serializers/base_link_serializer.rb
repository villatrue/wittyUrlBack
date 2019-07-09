class BaseLinkSerializer < ActiveModel::Serializer
  has_many :userLinks
  has_many :users, through: :userLinks
   
  attributes :id, :url, :image
end
