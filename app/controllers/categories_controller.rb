class CategoriesController < ApplicationController
  before_action :authenticate_account!
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create category_params
    if @category.save then
      redirect_to '/categories'
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    @category.update category_params
    if @category.save then
      redirect_to '/categories'
    else
      render'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to'/categories'
  end

  private
  def category_params
    params.require(:category).permit(:name, :image_id)
  end
end
