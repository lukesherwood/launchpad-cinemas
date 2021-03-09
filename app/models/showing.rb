class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :orders
  has_many :users, through: :orders

  def datetime
    self.time.strftime("%m:%M %p, %A %e %B, %Y")
  end
end
