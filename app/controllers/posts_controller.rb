class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new
    
    @post.title = params[:title]
    @post.content = params[:content]
    @post.image = params[:image]
    
    @post.save
    
    redirect_to "/posts/index"
  end

  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
end
