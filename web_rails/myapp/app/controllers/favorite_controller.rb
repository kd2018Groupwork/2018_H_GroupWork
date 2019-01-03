class FavoriteController < ApplicationController
  def show
    #params[]はString型
    if current_user.id === params[:user_id].to_i
      @fav_spot = Spot.joins(:favorites).select("spots.id,spot_name,rate").where(favorites: {user_id: params[:user_id]})
    else
      redirect_to root_path
    end
  end

  def create
    @spot = params[:spot_id]
    @user_spot = UserSpot.find_by(spot_id: @spot)
    if Favorite.create(user_id: current_user.id , spot_id: @spot)
      User.where('id = ?', @user_spot.user_id).update_all("rating = rating + 5")
      redirect_to search_detail_path(spot_id: @spot)
    else  
      redirect_to root_path
    end
  end

  def destroy
    @spot = params[:spot_id]
    @user_spot = UserSpot.find_by(spot_id: @spot)
    if favorite = Favorite.find_by(user_id: current_user.id , spot_id: @spot)
      User.where('id = ?', @user_spot.user_id).update_all("rating = rating - 5")
      favorite.delete
      redirect_to search_detail_path(spot_id: @spot)
    else
      redirect_to root_path
    end
  end
end
