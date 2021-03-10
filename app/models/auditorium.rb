class Auditorium < ApplicationRecord
    has_many :showings
    has_many :movies, through: :showings
    validates :name, presence: true
    validates :capacity, presence: true
end
