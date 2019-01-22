module PlanningHelper

  def get_favorite_spots()
    hash =  {}
    (Favorite.where(user_id: session[:user_id])).each do |data|
      hash.merge!(data.spot_id => (Spot.find_by(id: data.spot_id)).spot_name)
    end
    hash
  end
  
  def add_other_value_in_hash(hash)
    hash.store(:other_spots,'その他')
    hash
  end

end
