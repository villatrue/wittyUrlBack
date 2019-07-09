class User < ApplicationRecord
    has_many :userLinks
    has_many :baseLinks, through: :userLinks
end
