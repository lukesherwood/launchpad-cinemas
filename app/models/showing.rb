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
end
