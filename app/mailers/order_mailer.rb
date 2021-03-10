class OrderMailer < ApplicationMailer
    default :from => "application_name@domain.com"

    def order_confirmation(user)
        @user = user
        mail(:to => "#{user.name} <#{user.email}>", :subject => "Order Confirmation")
    end
end
