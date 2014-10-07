class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.add_cart_items_from_cart(@cart)
    @order.total = @order.total_sum
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
         @order.decrement_quantity(@cart)
         @order.update_column(:order_items, @order.ordered_items(@cart))
         @order.update_column(:order_suppliers, @order.order_suppl(@cart))
         @cart.cart_items.each do |c_item|
           SoldItem.create(title:       c_item.item.title,
                          lcode:        "L-#{c_item.item.lcode.to_s.rjust(4, '0')}",
                          price:        c_item.item.sale_cost_final,
                          supplier:     c_item.item.supplier_name,
                          created_at:   @order.created_at,
                          order_number: "Order №#{@order.id.to_s}"
                          )
         end
         Cart.destroy(session[:cart_id])
         session[:cart_id] = nil
         format.html { redirect_to @order, notice: 'Order was successfully created.' }
         format.json { render :show, status: :created, location: @order }
      else
         format.html { render :new }
         format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:comments, :payment_type, :total, :store, :order_items, :order_suppliers)
    end
end
