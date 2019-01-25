module FavoriteHelper
  def favotite_all
    @favorite ||= Favorite.all
  end

  def is_favorite_exist?(user_id, spot_id)
    favorits = favotite_all
    !favorits.exists?(user_id: user_id, spot_id: spot_id)
  end
end
