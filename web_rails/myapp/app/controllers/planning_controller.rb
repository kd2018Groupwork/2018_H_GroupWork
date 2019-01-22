class PlanningController < ApplicationController
  def index
    @plan = Plan.new
    @plan.plan_details.build
  end

  def create
    # plansテーブルへの保存
    @plan = Plan.new(plan_params) 
    @plan.user_id = session[:user_id]
    #@plan.plan_id = @plan.id#Plan.count + 1

    if @plan.save
      Favorite.where(user_id: session[:user_id]).delete_all
      flash[:success] = "聖地巡礼スケジュール表作成を作成しました!"
      redirect_to planning_show_path
    else
      flash[:danger] = "聖地巡礼スケジュール表作成に失敗しました"
      redirect_to planning_index_path
    end
    #動くけどsave二回してるので誰か直せたら直して
    @plan.plan_details.where('spot_name = ?', 'その他').update_all(spot_name: params[:other_spot][:text])
    @plan.save
  end
  
  def show
  end

  def plan_detail
    @plan = Plan.find(params[:plan_id])
    
    @plan_name = @plan.plan_name
    @plan_detail = @plan.plan_detail
    @detail = PlanDetail.where(plan_id: params[:plan_id])
    
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@plan_name}",
          layout: 'pdf.html.erb',
          template: 'planning/plan_pdf.html.erb', 
          encording: 'UTF-8'
=begin
        pdf = render_to_string( 
          pdf: 'plan', 
          layout: 'pdf.html.erb',
          template: 'planning/plan_pdf.html.erb', 
          encording: 'UTF-8'
        )
        send_data(pdf,filename: "#{@plan_name}.pdf")
=end
      end
    end
    
  end

  # 未完成
  def destroy
    id = params[:id]
    user_id = session[:user_id]
    if Plan.where('user_id = ?',user_id).find(id).destroy
      flash[:success] = "聖地巡礼スケジュール表を削除しました!"
      redirect_to :planning_show
    else
      flash[:danger] = "削除に失敗しました"
      render :planning_show
    end
  end

  def add_text_form
    if params[:spot_value] == 'その他'
      render partial: 'text_form', locals: {hidden: ''}
    else
      render partial: 'text_form', locals: {hidden: 'hidden'}
    end
  end

  private
    def plan_params
      params.require(:plan).permit(
        :user_id,
        :plan_id,
        :plan_name,
        :plan_detail,
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
