class Order < ApplicationRecord
  belongs_to :showing
  belongs_to :user
  validates :credit_card_number, presence: true #need to add more validations here
  validates :credit_card_expiry, presence: true
  accepts_nested_attributes_for :user, allow_destroy: true
end
