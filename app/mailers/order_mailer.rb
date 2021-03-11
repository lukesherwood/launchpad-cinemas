class OrderMailer < ApplicationMailer
    default :from => "cinemas@launchpad.com"
    def order_confirmation
        @user = params[:user]
        @url  = 'http://example.com/login'
        mail(:to => "#{@user.name} <#{@user.email}>", :subject => "Order Confirmation")
    end
end
