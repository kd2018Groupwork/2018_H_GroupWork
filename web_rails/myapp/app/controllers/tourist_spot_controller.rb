class TouristSpotController < ApplicationController
  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      flash[:success] = "観光地の登録が完了しました!"
      redirect_to :complete_spot
    else
      render 'new'
    end
  end

  private                                                                       

    def spot_params
      params.require(:spot).permit(
        :spot_name, 
        :product_id,
        :point,
        :spot_address, 
        :details)
    end
end
