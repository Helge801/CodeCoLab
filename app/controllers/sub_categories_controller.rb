class SubCategoriesController < ApplicationController
before_action :get_sub_category, only: [:show]
  def new
    @sub_category = SubCategory.new
  end

  def create
    @sub_category = SubCategory.new(sub_category_params)

    respond_to do |format|
      if @sub_category.save
        format.html { redirect_to @sub_category, notice: 'Sub Category was successfully created.' }
      else
        format.html { render :new, notice: 'Sub Category was not created' }
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
    @categories = Category.all
    @posts = @sub_category.posts
  end

  private

    def get_sub_category
      @sub_category = SubCategory.find(params[:id])
    end

    def sub_category_params
      params.require(:sub_category).permit(:name, :category_id)
    end
end
