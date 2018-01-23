class SubCategoriesController < ApplicationController
before_action :get_sub_category, only: [:show]
  def new
  end

  def create
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
    @posts = @sub_category.posts
  end

  private

  def get_sub_category
    @sub_category = SubCategory.find(params[:id])
  end
end
