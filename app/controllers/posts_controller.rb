class PostsController < ApplicationController

  def index
    @posts = Search.new(params[:query]).perform
  end

  def show
    post = Post.find(params[:id])
    @post = PostDecorator.new(post).to_post
  end

end
