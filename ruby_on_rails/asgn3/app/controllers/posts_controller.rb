class PostsController < ApplicationController
  before_action :set_post, only: %i[ destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      @post.save
      format.html { redirect_to posts_path(@posts), notice: "Post was successfully created." }
      format.json { head :no_content }
      format.js { render :layout => false }
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
      format.js { render :layout => false }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :description, :privacy)
  end
end
