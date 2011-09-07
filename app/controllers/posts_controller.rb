class PostsController < ApplicationController
  respond_to :html, :json

  def index
    @posts = Post.all
    @post = Post.new
  end

  def search
    @term = params[:term]
    @posts = Post.search @term
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

