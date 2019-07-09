class BaselinkSerializer < ActiveModel::Serializer
  # has_many :userlinks
  # has_many :users, through: :userlinks
   
  attributes :id, :url, :image
end
