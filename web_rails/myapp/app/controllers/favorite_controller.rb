class FavoriteController < ApplicationController
  def show
    #params[]はString型
    if current_user.id === params[:user_id].to_i
      
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
    if favorite = Favorite.find_by(user_id: current_user.id , spot_id: @spot)
      favorite.delete
      redirect_to search_detail_path(spot_id: @spot)
    else
      redirect_to root_path
    end
  end
end
