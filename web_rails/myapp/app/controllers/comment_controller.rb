class CommentController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to search_detail_path(params[:comment][:spot_id])
    else
      flash[:success] = "3文字以上200文字以内で入力してください"
      redirect_to search_detail_path(params[:comment][:spot_id])
    end
  end

  def destroy
    
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :user_id, :spot_id)
  end
end
