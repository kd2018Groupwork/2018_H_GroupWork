class Product < ApplicationRecord
  has_many :spots
  has_many :genres
  validates :product_name, presence: true
end
