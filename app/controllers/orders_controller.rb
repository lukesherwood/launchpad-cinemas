class OrdersController < ApplicationController
	def new
		@showing = Showing.find(params[:showing_id])
		@order = Order.new
		@user = User.new
	end

	def index
		@showing = Showing.find(params[:showing_id])
		@orders = @showing.orders
	end

	def all_orders
		@orders = Order.all
	end

	def create
		@showing = Showing.find(params[:showing_id])
		if @showing.sold_out?
			redirect_to '/', notice: "Sorry this showing is sold out"
		else
			@user = User.new(order_params[:user])
			@order = Order.new(credit_card_number: order_params[:credit_card_number], credit_card_expiry: order_params[:credit_card_expiry])
			@order.user = @user
			@order.showing = @showing
			if @showing.save && @user.save && @order.save
				redirect_to '/', notice: "Successfully created an order"
				# OrderMailer.with(user: @user).order_confirmation.deliver_now
			else
				render 'new'
			end
		end
	end


	private

	def order_params
		params.require(:order).permit(:credit_card_number, :credit_card_expiry, :showing_id, user: [:email, :name])
	end
end
