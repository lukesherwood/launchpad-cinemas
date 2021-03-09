class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :orders
  has_many :users, through: :orders
end
