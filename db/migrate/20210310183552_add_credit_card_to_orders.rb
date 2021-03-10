class AddCreditCardToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :credit_card_number, :string
    add_column :orders, :credit_card_expiry, :string
  end
end
