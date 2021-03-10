class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :orders
  has_many :users, through: :orders
  accepts_nested_attributes_for :orders
  validates :time, presence: true
  def datetime
    self.time.strftime("%m:%M %p, %A %e %B, %Y")
  end

  def number_of_seats_remaining
    self.auditorium.capacity - self.orders.length
  end

  def sold_out?
    number_of_seats_remaining <= 0
  end

end
