class Movie < ApplicationRecord
    has_many :showings
    has_many :auditoriums, through: :showings
end
