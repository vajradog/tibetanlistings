class CategoriesController < ApplicationController
  before_action :require_admin, only: [:new, :create]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = 'Category Created'
      redirect_to listings_path
    else
      render 'new'
    end
  end

  def show
    @category = Category.find_by(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end