class CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
      else
        format.html { render :new, notice: 'Category was not created' }
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
    @categories = Category.all
  end

  def show
    @sub_category = @category.sub_categories
    @categories = Category.all
  end

  private

    def get_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end
