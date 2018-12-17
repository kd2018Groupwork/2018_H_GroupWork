class FavoriteController < ApplicationController
  def create
    if Favorite.create(user_id: current_user.id , spot_id: params[:'spot_id'])
      redirect_to search_detail_path(spot_id: params[:spot_id])
    else  
      redirect_to root_path
    end
  end

  def destroy
    if favorite = Favorite.find_by(user_id: current_user.id , spot_id: params[:'spot_id'])
      favorite.delete
      redirect_to search_detail_path(spot_id: params[:spot_id])
    else
      redirect_to root_path
    end
  end
end
