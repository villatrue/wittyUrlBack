class User < ApplicationRecord
    has_many :userlinks
    has_many :baselinks, through: :userlinks
end
