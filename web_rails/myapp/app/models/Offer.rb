class Offer
  include ActiveModel::Model
 
  attr_accessor :name, :email, :message
 
  #validates :name, :presence
  #validates :email, :presence
end