class ProductsController < ApplicationController
  def index
    cart
  end

  def add
    cart << params[:product]
    render :index
  end
  private
  def product_params
    params.permit(:name)
  end

end
