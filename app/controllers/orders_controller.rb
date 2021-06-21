class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)
    current_cart=@current_cart
    # @order.add_cart_items_to_order(@current_cart)

    respond_to do |format|
      if @order.save # this will save the order 
       
       current_cart.line_items.each do |line_item|
          # using the bang (!) to save to the DB and raise any errors
          # rather than failing silently
          @order.order_items.create!(         
             product_id: line_item.product_id,
             quantity:   line_item.quantity,
             product_name: line_item.product.name,
             product_price: line_item.product.price
            #quantity: line_item.quantity
          )
          end


      #   #Cart.destroy(session[:cart_id])
        format.html { redirect_to orders_path, notice: "Order was placed." }
        format.json { render :show, status: :created, location: @order }
      # else
        format.html { redirect_to cart_path(current_cart), notice: "order was not placed" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_type)
    end
end