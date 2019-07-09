class UserLinkSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :baseLink

  attributes :id, :user_id, :baseLink_id, :ending
end
