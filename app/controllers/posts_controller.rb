class PostsController < ApplicationController
  respond_to :html, :json
  http_basic_authenticate_with :name => "danigb", :password => "dani"

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    respond_with @post, location: posts_path
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    respond_with @post, location: posts_path
  end
end

