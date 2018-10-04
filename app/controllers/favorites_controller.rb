class FavoritesController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @blog.favorites.create(user_id: current_user.id)
    render 'toggle_btn'
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    favorite = @blog.favorites.find_by(user_id: current_user.id)
    favorite.destroy
    render 'toggle_btn'
  end
end
