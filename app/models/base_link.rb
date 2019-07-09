class BaseLink < ApplicationRecord
    has_many :userLinks
    has_many :users, through: :userLinks
end
