class PlanningController < ApplicationController
  def index
    @plan = Plan.new
    @plan.plan_details.build
  end

  def create
    # plansテーブルへの保存
    #@plan = Plan.new(plan_params)
    #@plan.user_id = session[:user_id]
    #@plan.plan_id = Plan.count + 1
    #if @plan.save
    
    @plan = Plan.new(plan_params)
    if @plan.save
    # plan_detailsテーブルへの保存
    #@plan_detail = PlanDetail.new(plan_params)
    #@plan_detail.plan_id = @pran.id

    #if @pran_detail.save
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
    def plan_params
      params.require(:plan).permit(
        :user_id,
        :plan_id,
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
