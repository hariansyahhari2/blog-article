class CommentsController < ApplicationController
  before_action :check_current_user, only:[:new, :create, :edit, :update, :destroy]
  def show
    @comment = Comment.find_by_id(params[:id])
  end


  def create
    respond_to do |format|
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(params_comments)

      if @comment.save
        redirect_to articles_path(@article)
      else
        format.js{article=Article.find(params[:article_id])}
      end
    end
  end
  
  # def create
  #   @comment = Comment.new(params_comment)
  #   if @comment.save
  #     flash[:success] = "Success Add Records"
  #     redirect_to action: 'index'
  #   else
  #     flash[:error] = "Data not valid"
  #     render 'new'
  #   end
  # end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  def params_comments
    params.require(:comment).permit(:article_id, :username, :content, :status)
  end
end