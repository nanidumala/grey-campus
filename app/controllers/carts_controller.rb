class CartsController < ApplicationController
  def show
    @cart = @current_cart
    respond_to do |format|
      format.html
      format.json { render json: { cart: @cart } }
    end
  end
  
  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end

end
