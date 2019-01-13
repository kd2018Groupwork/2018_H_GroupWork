class FavoriteController < ApplicationController
  before_action :set_variables

  def create
    puts params[:spot_id]
    @user_spot = UserSpot.find_by(spot_id: params[:spot_id])
    if Favorite.create(user_id: current_user.id , spot_id: params[:spot_id])
      User.where('id = ?', @user_spot.user_id).update_all("rating = rating + 5")
      #redirect_to search_detail_path(spot_id: @spot)
    else  
      redirect_to root_path
    end
  end

  def destroy
    @user_spot = UserSpot.find_by(spot_id: params[:spot_id])
    if favorite = Favorite.find_by(user_id: current_user.id , spot_id: params[:spot_id])
      favorite.delete
      User.where('id = ?', @user_spot.user_id).update_all("rating = rating - 5")
      #redirect_to search_detail_path(spot_id: @spot)
    else
      redirect_to root_path
    end
  end

  private

  def set_variables
    if params[:spot_id]
      puts params[:spot_id]
      @spt = Spot.find(params[:spot_id])
      @id_name = "#fav-link-#{@spt.id}"
    end
  end
end
