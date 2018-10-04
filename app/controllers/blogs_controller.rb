class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = current_user.blogs.build(blog_params)

    if @blog.save
      redirect_to blog_url(@blog), notice: 'ブログを投稿しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blog_url(@blog), notice: 'ブログを編集しました'
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to root_url, notice: 'ブログを削除しました'
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.fetch(:blog, {}).permit(:title, :content)
  end
end
