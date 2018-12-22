class PlanningController < ApplicationController
  def index
    @plan = PlanDetail.new
  end

  def create
    # pransテーブルへの保存
    @prans = Prans.new
    @prans.user_id = session[:user_id]
    @prans.plan_id = 
    @prans.save

    # pran_detailテーブルへの保存
    @pran_detail = PranDetail.new(pran_params)
    @pran_detail.plan_id = @prans.id
    if @pran_detail.save
    
    else
      
    end
  end
  
  def show
  end

  private
    def pran_params
      params.require(:pran).permit(
        :plan_id,
        :date,
        :spot_name,
        :comment,
      )
    end

end
