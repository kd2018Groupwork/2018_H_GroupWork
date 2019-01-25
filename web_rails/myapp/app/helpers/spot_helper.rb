module SpotHelper
  STR_LIMIT = 70

  def shop_spot_ids
    @shops ||= Shop.all.map(&:spot_id)
  end
  
  def is_sponsored?(spot_id)
    (shop_spot_ids & Array(spot_id)).any?
  end

  def limit_str_detail(spot_detail)
    limited_str = spot_detail[0,STR_LIMIT]
    limited_str += spot_detail.length >= STR_LIMIT ? '...' : ''
  end
end
