module RateHelper
  def rate_all
    @rate ||= Rate.all
  end
  
  def is_rate_exist?(user_id, spot_id)
    rates = rate_all
    !rates.exists?(user_id:current_user.id,spot_id:detail.id)
  end
end
