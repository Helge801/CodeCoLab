class CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :edit, :update, :destroy]

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
    @categories = Category.all
  end

  def show
    @sub_category = @category.sub_categories
  end

  private

  def get_category
    @category = Category.find(params[:id])
  end

end
