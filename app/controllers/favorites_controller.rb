class FavoritesController < ApplicationController
  before_action :require_sign_in


  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)

    if favorite.save
      flash[:notice] = "Post favorited!"
    else
      flash[:error] ="Favoriting failed."
  end
  # /topics/123/posts/456
  # redirect_to topic_post_path(post.topic, post)
  redirect_to [post.topic, post]
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])

    if favorite.destroy
      flash[:notice] = "Post unfavorited."
    else
      flash.now[:alert] = "Unfavoriting failed."
    end
      redirect_to [post.topic, post]
  end
end
