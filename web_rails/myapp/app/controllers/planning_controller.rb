class PlanningController < ApplicationController
  def index
    @plan = Plan.new
  end

  def create
    # pransテーブルへの保存
    @pran = Plan.new
    @pran.user_id = session[:user_id]
    @pran.plan_id = Plan.count + 1
    @pran.save

    # pran_detailテーブルへの保存
    @pran_detail = PlanDetail.new(pran_params)
    @pran_detail.plan_id = @prans.id
    if @pran_detail.save
    
    else
      
    end
  end
  
  def show
  end

  private
    def pran_params
      params.require(:plan).permit(
        :plan_id,
        :date,
        :spot_name,
        :comment,
        roomtypes_attributes: 
        [
          :id, 
          :plan_id, 
          :date, 
          :spot_name, 
          :comment, 
          :_destroy
        ]
      )
    end

end
