class PlanningController < ApplicationController
  def index
    @plan = Plan.new
    @plan.plan_details.build
  end

  def create
    # plansテーブルへの保存
    @plan = Plan.new(plan_params)
    @plan.user_id = session[:user_id]
    @plan.plan_id = Plan.count + 1
    if @plan.save
      flash[:success] = "計画表作成を作成しました!"
      redirect_to :complete_planning
    else
      flash[:denger] = "計画表作成に失敗しました"
      redirect_to :planning_index
    end
  end
  
  def show
  end

  def plan_detail
    @plan_name = (Plan.find(params[:plan_id])).plan_name
    @detail = PlanDetail.where(plan_id: params[:plan_id])
  end

  # 未完成
  def destroy_all
    checked_data = params[:deletes].keys
    if Plan.destroy(checked_data)
      flash[:success] = "計画表を削除しました!"
      redirect_to :plan_detail
    else
      flash[:denger] = "削除に失敗しました"
      render :plan_detail
    end
  end

  private
    def plan_params
      params.require(:plan).permit(
        :user_id,
        :plan_id,
        :plan_name,
        plan_details_attributes: 
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
