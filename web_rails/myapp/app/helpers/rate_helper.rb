module RateHelper
  def rate_all
    @rate ||= Rating.all
  end
  
  def is_rate_exist?(user_id, spot_id)
    rates = rate_all
    user_ids = rates.map(&:user_id)
    spot_ids = rates.map(&:spot_id)
    ((user_ids & Array(user_id)) & (spot_ids & Array(spot_id))).any?
  end
end
