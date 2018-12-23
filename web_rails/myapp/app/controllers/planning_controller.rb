class PlanningController < ApplicationController
  def index
    @plan = Plan.new
    @plan.plan_details.build
  end

  def create
    # pransテーブルへの保存
    @pran = Plan.new
    @pran.user_id = session[:user_id]
    @pran.plan_id = Plan.count + 1
    @pran.save

    # pran_detailテーブルへの保存
    @pran_detail = PlanDetail.new(pran_params)
    @pran_detail.plan_id = @pran.id
    if @pran_detail.save
      flash[:success] = "計画表作成を作成しました!"
      redirect_to :complete_planning
    else
      flash[:denger] = "計画表作成に失敗しました"
      redirect_to :planning_index
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
        plan_details: 
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
