class PlanDetail < ApplicationRecord
  belongs_to :plans
  
  validates :date,        presence: true
  validates :spot_name,   presence: true
  validates :comment,     presence: true
end
