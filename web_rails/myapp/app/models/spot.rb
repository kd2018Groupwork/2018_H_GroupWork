class Spot < ApplicationRecord
    has_many :likes, dependent: :destroy
end
