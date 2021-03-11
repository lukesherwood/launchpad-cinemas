class User < ApplicationRecord
    has_many :orders
    validates :name, presence: true
    validates :email, presence: true, 
    format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
