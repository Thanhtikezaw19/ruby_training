class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @user = UserService.getUserById(session[:user_id])
    @post = PostService.createPost(@user, post_params)
    redirect_to user_posts_path(@user), notice: "Post created Successfully"
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    @user = UserService.getUserById(params[:user_id])
    @is_post_update = PostService.updatePost(@post, post_params)

    if @is_post_update
      redirect_to posts_path, notice: "Post was successfully updated"
    else
      render :edit, notice: "update failed"
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @user = UserService.getUserById(params[:user_id])
    PostService.destroyPost(@post)

    redirect_to user_path(@user), notice: "Post deleted"
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.fetch(:post, {})
    params.require(:post).permit(:title, :description, :public_flag)
  end
end
