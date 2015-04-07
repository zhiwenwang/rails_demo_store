class Backend::ProductsController < Backend::BaseController

  def index
    # TODO
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to backend_products_path
    else
      render :new
    end
  end

  def edit
    # TODO
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :is_online, :image)
  end
end
