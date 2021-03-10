class OrdersController < ApplicationController
    def new
        @showing = Showing.find(params[:showing_id])
        @order = Order.new
        @user = User.new
    end

    def create
        @showing = Showing.find(params[:showing_id])
        @user = User.new(order_params[:user])
        @order = Order.new
        @order.user = @user
        @order.showing = @showing
        if @showing.save && @user.save && @order.save
            redirect_to '/', notice: "Successfully created an order"
            #email confirmation to user.email
        else
            redirect_to new_showing_order_path(@showing), alert: 'Unsuccessful order, please try again. *name and email is required'
        end
    end

    private

    def order_params
        params.require(:order).permit(:showing_id, user: [:email, :name])
    end
end
