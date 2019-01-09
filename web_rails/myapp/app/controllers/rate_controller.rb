class RateController < ApplicationController
  before_action :set_variables

  def create
    @user_spot = UserSpot.find_by(spot_id: @spt.id)
    if Rating.create(user_id: current_user.id , spot_id: @spt.id)
      Spot.where('id = ?', @spt.id).update_all("rate = rate + 1")
      User.where('id = ?', @user_spot.user_id).update_all("rating = rating + 10")
      @spt.reload
=begin
      if URI(request.referer).path == root_path
        redirect_to root_path
      elsif URI(request.referer).path == search_result_path
        redirect_to request.referer
      else
        redirect_to search_detail_path(spot_id: @spot)
      end
=end
    else  
      redirect_to root_path
    end
  end

  def destroy
    @user_spot = UserSpot.find_by(spot_id: @spt.id)
    if rate = Rating.find_by(user_id: current_user.id , spot_id: @spt.id)
      rate.delete
      Spot.where('id = ?', @spt.id).update_all("rate = rate - 1")
      User.where('id = ?', @user_spot.user_id).update_all("rating = rating - 10")
      @spt.reload
=begin
      if URI(request.referer).path == root_path
        redirect_to root_path
      elsif URI(request.referer).path == search_result_path
        redirect_to request.referer
      else
        #redirect_to search_detail_path(spot_id: @spot)
      end
=end
    else
      redirect_to root_path
    end
  end

  private

  def set_variables
    @spt = Spot.find(params[:spot_id])
    puts @spt.id
    @id_name = "#like-link-#{@spt.id}"
  end

end
