class HomeController < ApplicationController
  def index
    @posts = Post.all.includes(:comments)
  end

  def create
    Post.create_dummy_posts
  end
end
