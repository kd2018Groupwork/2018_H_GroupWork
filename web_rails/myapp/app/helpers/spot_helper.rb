module SpotHelper
  def shop_spot_ids
    @shops ||= Shop.all.map(&:spot_id)
  end
  
  def is_sponsored?(spot_id)
    (shop_spot_ids & Array(spot_id)).any?
  end

  def limit_str_detail(spot_detail)
    limited_str = spot_detail[0,70]
    limited_str += spot_detail.length >= 70 ? '...' : ''
  end
end
