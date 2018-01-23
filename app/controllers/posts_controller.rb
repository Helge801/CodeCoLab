class PostsController < ApplicationController
  before_action :get_post, only: [:show]
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render :new, notice: 'Post was not created' }
      end
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  def index
  end

  def show
    @post
  end

  private 

    def get_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:body, :sub_category_id)
    end

end
