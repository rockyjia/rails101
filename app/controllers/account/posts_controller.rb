class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @posts.update(post_params)
      redirect_to posts_path, notice: "Update Success"
  end

  def destroy
    @posts.destroy
    redirect_to posts_path, alert: "post deleted"
  end



end
