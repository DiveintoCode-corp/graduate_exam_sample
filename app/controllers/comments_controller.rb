class CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :destroy]

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to blog_url(@blog), notice: 'コメントを投稿しました'
    else
      render template: 'blogs/show'
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to blog_url(@comment.blog), notice: 'コメントを更新しました'
    else
      render template: 'blogs/show'
    end
  end

  def destroy
    @comment.destroy
    redirect_to blog_url(@comment.blog), notice: 'コメントを削除しました'
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.fetch(:comment, {}).permit(:content)
  end
end
