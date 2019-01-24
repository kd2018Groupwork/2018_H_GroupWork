module SpotHelper
  def is_sponsored?(spot_id)
    Shop.exists?(spot_id: spot_id)
  end

  def limit_str_detail(spot_detail)
    limited_str = spot_detail[0,70]
    limited_str += spot_detail.length >= 70 ? '...' : ''
  end
end
