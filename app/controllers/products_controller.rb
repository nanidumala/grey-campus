class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except:[:index, :show]
  

  # GET /products or /products.json
  def index
    @products = Product.all
    @cart=@current_cart
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product,notice: "product was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: "product was successfully updated."
    else
      render :edit
    end
    # redirect_to products_path
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product=Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price , :image)
    end
end
