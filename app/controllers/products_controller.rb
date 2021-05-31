class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(product_params)

    respond_to do |format|
      if @products.save
        format.html { redirect_to products_path, notice: 'Produto Criado'}
      else
        format.html {render :new}
      end
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :value, :restaturant_id)
  end
end
