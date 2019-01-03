class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  validates :comment, presence: true , length: { in: 3..200 }
end
