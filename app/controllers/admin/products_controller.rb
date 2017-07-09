class Admin::ProductsController < Admin::BaseController

  def index
    @products = Product.order(id: :desc).all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:success] = "Product created!"
      redirect_to [:admin, :products]
    else
      render :new
    end
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
    flash[:danger] = "Product has been deleted."
    redirect_to [:admin, :products]
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category_id,
      :quantity,
      :image,
      :price
    )
  end

end
