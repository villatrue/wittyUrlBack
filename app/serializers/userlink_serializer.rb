class UserlinkSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :baselink

  attributes :id, :user_id, :baselink_id, :url
end
