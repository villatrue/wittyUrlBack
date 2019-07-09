class Baselink < ApplicationRecord
    has_many :userlinks
    has_many :users, through: :userlinks
end
