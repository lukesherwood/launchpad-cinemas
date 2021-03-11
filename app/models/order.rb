class Order < ApplicationRecord
  belongs_to :showing
  belongs_to :user
  
  validates :credit_card_number, numericality: true, presence: true, length: { in: 13..16 }
  validates :credit_card_expiry, presence: true
  accepts_nested_attributes_for :user, allow_destroy: true

end
