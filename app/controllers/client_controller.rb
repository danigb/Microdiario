class ClientController < ApplicationController
  before_filter :require_user

  def show
    @posts = Post.all
  end
end

