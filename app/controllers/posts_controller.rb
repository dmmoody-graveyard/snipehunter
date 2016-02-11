class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(crop_params)
    if post.save
      flash[:success] = "Your post was successfully created."
      redirect_to posts_path
    else
      flash[:error] = "Something went wrong creating your post."
      render :new
    end
  end

  private

  def crop_params
    params.require(:post).permit(:title, :message, :user_id)
  end
end
