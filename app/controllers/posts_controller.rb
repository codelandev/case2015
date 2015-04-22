class PostsController < ApplicationController
  def index
    @posts = Post.in_the_past.order(published_at: :asc).page(params[:page]).per(5)
  end

  def show
    @post = Post.find(params[:id])
  end
end
