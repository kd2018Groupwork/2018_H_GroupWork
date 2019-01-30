class RateController < ApplicationController
  before_action :set_variables

  def create
    @user_spot = UserSpot.find_by(spot_id: @spt.id)
    if Rating.create(user_id: current_user.id , spot_id: @spt.id)
      Spot.where('id = ?', @spt.id).update_all("rate = rate + 1")
      User.where('id = ?', @user_spot.user_id).update_all("rating = rating + 10")
      @spt.reload

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
