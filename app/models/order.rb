class Order < ApplicationRecord
  belongs_to :showing
  belongs_to :user
  accepts_nested_attributes_for :user, allow_destroy: true
end
