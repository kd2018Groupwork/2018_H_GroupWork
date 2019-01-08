class Plan < ApplicationRecord
  has_many :plan_details
  accepts_nested_attributes_for :plan_details, allow_destroy: true

  validates :plan_name,        presence: true
end
