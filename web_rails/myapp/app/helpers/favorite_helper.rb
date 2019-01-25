module FavoriteHelper
  def favotite_all
    @favorite ||= Favorite.all
  end

  def is_favorite_exist?(user_id, spot_id)
    favorits = favotite_all
    user_ids = favorits.map(&:user_id)
    spot_ids = favorits.map(&:spot_id)
    (user_ids & Array(user_id)).any? & (spot_ids & Array(spot_id)).any?
  end
end
