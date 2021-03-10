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

    def create
        @showing = Showing.find(params[:showing_id])
        @user = User.new(order_params[:user])
        @order = Order.new(credit_card_number: "xxxx xxxx xxxx xxxx", credit_card_expiry: order_params[:credit_card_expiry])
        @order.user = @user
        @order.showing = @showing
        if @showing.save && @user.save && @order.save
            redirect_to '/', notice: "Successfully created an order"
            OrderMailer.order_confirmation(@user).deliver_now
            #email confirmation to user.email
        else
            # redirect_to new_showing_order_path(@showing), alert: 'Unsuccessful order, please try again. *name and email is required'
            render 'new'
        end
    end

    private

    def order_params
        params.require(:order).permit(:credit_card_number, :credit_card_expiry, :showing_id, user: [:email, :name])
    end
end
