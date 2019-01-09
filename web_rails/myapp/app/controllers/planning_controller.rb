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
      redirect_to complete_planning_path
    else
      flash[:denger] = "計画表作成に失敗しました"
      redirect_to planning_index_path
    end
  end
  
  def show
  end

  def plan_detail
    @plan_name = (Plan.find(params[:plan_id])).plan_name
    @detail = PlanDetail.where(plan_id: params[:plan_id])
    
    respond_to do |format|
      format.html
      format.pdf do
=begin
        render pdf: 'plan',
          layout: 'pdf.html.erb',
          template: 'planning/plan_pdf.html.erb', 
          encording: 'UTF-8'
=end
        pdf = render_to_string( 
          pdf: 'plan', 
          layout: 'pdf.html.erb',
          template: 'planning/plan_pdf.html.erb', 
          encording: 'UTF-8'
        )
        send_data(pdf,filename: "#{@plan_name}.pdf")
      end
    end
  end

  # 未完成
  def destroy
    id = params[:id]
    user_id = session[:user_id]
    if Plan.where('user_id = ?',user_id).find(id).destroy
      flash[:success] = "計画表を削除しました!"
      redirect_to :planning_show
    else
      flash[:danger] = "削除に失敗しました"
      render :planning_show
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
