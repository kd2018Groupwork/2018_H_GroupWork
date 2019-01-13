class PlanDetail < ApplicationRecord
  belongs_to :plan
  
  validates :date,        presence: true
  validates :spot_name,   presence: true
end
