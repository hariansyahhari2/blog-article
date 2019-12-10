class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by_id(params[:id])
  end

  def create
    @comment = Comment.new(params_comment)
    if @comment.save
      flash[:success] = "Success Add Records"
      redirect_to action: 'index'
    else
      flash[:error] = "Data not valid"
      render 'new'
    end
  end

  def destroy
  end

  private
  def params_comment
    params.require(:comment).permit(:article_id, :username, :content, :status)
  end
end