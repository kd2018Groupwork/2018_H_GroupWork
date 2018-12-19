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
    if Favorite.create(user_id: current_user.id , spot_id: @spot)
      redirect_to search_detail_path(spot_id: @spot)
    else  
      redirect_to root_path
    end
  end

  def destroy
    @spot = params[:spot_id]
    if favorite = Favorite.find_by(user_id: current_user.id , spot_id: @spot)
      favorite.delete
      redirect_to search_detail_path(spot_id: @spot)
    else
      redirect_to root_path
    end
  end
end
