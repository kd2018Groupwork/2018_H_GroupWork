module SpotHelper
  def is_sponsored?(spot_id)
    Shop.exists?(spot_id: spot_id)
  end
end
