class CommentController < ApplicationController
  before_action :set_variables

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      #redirect_to search_detail_path(params[:comment][:spot_id])
      @cmts.reload
      render :index
    else
      flash[:success] = "3文字以上200文字以内で入力してください"
      redirect_to search_detail_path(params[:comment][:spot_id])
    end

  end

  def destroy
    @comment = Comment.find_by(user_id: current_user.id , spot_id: params[:spot_id])
    @comment.delete
    @cmts.reload
    render :index
    #redirect_to search_detail_path(spot_id: params[:spot_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :user_id, :spot_id , {images: []})
  end

  def set_variables
    @cmts = User.joins(:comments).select("*").where("comments.spot_id" => params[:spot_id]).order('comments.updated_at DESC')  
  end
end
