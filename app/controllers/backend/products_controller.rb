class Backend::ProductsController < Backend::BaseController

  def index
    @products = Product.includes(:user, :product).page(params[:page]).per(3)
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
    if @product.update(product_params)
      redirect_to backend_product_path
    else
      render :edit 
    end
  end

  def update
    if @product.update(product_params)
      redirect_to backend_product_path
    else
      render :edit 
    end
  end

  def destroy
    @product.destroy
    redirect_to backend_products_path
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :is_online, :image)
  end
end
